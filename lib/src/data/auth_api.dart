import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthApi {
  AuthApi(this._auth, this._firestore);

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Future<AppUser?> getCurrentUser() async {
    final User? currentUser = _auth.currentUser;
    if (currentUser != null) {
      final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore.doc('users/${currentUser.uid}').get();

      if (snapshot.exists) {
        return AppUser.fromJson(snapshot.data()!);
      } else {
        final AppUser user =
            AppUser(uid: currentUser.uid, email: currentUser.email!, username: currentUser.displayName!);

        await _firestore.doc('users/${user.uid}').set(user.toJson());
        return user;
      }
    }
    return null;
  }

  Future<AppUser> login({required String email, required String password}) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    final DocumentSnapshot<Map<String, dynamic>> snapshot =
        await _firestore.doc('users/${_auth.currentUser!.uid}').get();
    return AppUser.fromJson(snapshot.data()!);
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  Future<AppUser> create({required String email, required String password, required String username}) async {
    final UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    final AppUser user = AppUser(uid: credential.user!.uid, email: email, username: username);
    // TODOMaybe add groceryList parameter -- shall see later

    await _firestore.doc('users/${user.uid}').set(user.toJson());

    return user;
  }

  Future<GroceryList> createGroceryList({
    required String title,
    required String description,
    required String selectedIcon,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('lists').doc();
    final GroceryList groceryList = GroceryList(
      groceryListId: ref.id,
      title: title,
      selectedIcon: selectedIcon,
      description: description,
    );

    await ref.set(groceryList.toJson());

    final User? currentUser = _auth.currentUser;
    final DocumentReference<Map<String, dynamic>> userRef = _firestore.doc('users/${currentUser?.uid}');
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await userRef.get();

    final Map<String, dynamic> userData = snapshot.data()!;

    final List<dynamic>? groceryListIds =
        (snapshot.data()?['groceryListIds'] as List<dynamic>?)?.map((dynamic id) => id.toString()).toList();

    groceryListIds?.add(ref.id);
    userData['groceryListIds'] = groceryListIds;
    await userRef.update(userData);

    return groceryList;
  }

  Future<List<GroceryList>> updateGroceryList({
    required String title,
    required String description,
    required String selectedIcon,
    required GroceryList groceryList,
  }) async {
    final List<GroceryList> groceryLists = <GroceryList>[groceryList];
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('lists').doc(groceryList.groceryListId);

    final Map<String, dynamic> dataToUpdate = <String, dynamic>{
      'title': title,
      'description': description,
      'selectedIcon': selectedIcon,
    };

    await ref.update(dataToUpdate);

    groceryLists.add(
      GroceryList(
        groceryListId: groceryList.groceryListId,
        title: title,
        selectedIcon: selectedIcon,
        description: description,
      ),
    );

    return groceryLists;
  }

  Future<void> removeGroceryList({
    required GroceryList groceryList,
    required String currentUserId,
  }) async {
    final DocumentReference<Map<String, dynamic>> groceryListRef =
        _firestore.collection('lists').doc(groceryList.groceryListId);
    final DocumentSnapshot<Map<String, dynamic>> groceryListSnapshot = await groceryListRef.get();

    if (groceryListSnapshot.exists) {
      final Map<String, dynamic> groceryListData = groceryListSnapshot.data()!;
      final int currentUsersCount = groceryListData['usersCount'] as int? ?? 0;

      if (currentUsersCount == 1) {
        final List<dynamic>? productIds = groceryListData['productIds'] as List<dynamic>?;

        final WriteBatch batch = _firestore.batch();

        if (productIds != null) {
          for (final dynamic productId in productIds) {
            final List<dynamic> parts = productId.toString().split('/');
            if (parts.first == 'products') {
              final DocumentReference<Map<String, dynamic>> productRef =
                  _firestore.collection('products').doc(parts.last as String);
              batch.delete(productRef);
            }
          }
        }

        final DocumentReference<Map<String, dynamic>> userRef = _firestore.doc('users/$currentUserId');
        final DocumentSnapshot<Map<String, dynamic>> userSnapshot = await userRef.get();

        if (userSnapshot.exists) {
          final Map<String, dynamic> userData = userSnapshot.data()!;
          final List<dynamic>? groceryListIds = (userData['groceryListIds'] as List<dynamic>?)?.cast<String>().toList();

          if (groceryListIds != null) {
            groceryListIds.remove(groceryList.groceryListId);
            userData['groceryListIds'] = groceryListIds;
            batch.update(userRef, userData);
          }
        }

        batch.delete(groceryListRef);

        try {
          await batch.commit();
        } catch (e) {
          if (kDebugMode) {
            print('Failed to remove grocery list: $e');
          }
          rethrow;
        }
      } else {
        groceryListData['usersCount'] = currentUsersCount - 1;
        await groceryListRef.update(groceryListData);
      }
    }
  }

  Future<Set<GroceryList>> getLists() async {
    final User? currentUser = _auth.currentUser;
    final DocumentReference<Map<String, dynamic>> userRef = _firestore.doc('users/${currentUser?.uid}');
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await userRef.get();

    if (!snapshot.exists) {
      throw Exception('User document not found!');
    }

    final List<dynamic>? groceryListIds =
        (snapshot.data()?['groceryListIds'] as List<dynamic>?)?.map((dynamic id) => id.toString()).toList();

    final Set<GroceryList> result = <GroceryList>{};

    if (groceryListIds != null && groceryListIds.isNotEmpty) {
      final QuerySnapshot<Map<String, dynamic>> listSnapshot =
          await _firestore.collection('lists').where(FieldPath.documentId, whereIn: groceryListIds).get();

      for (final DocumentSnapshot<Map<String, dynamic>> documentSnapshot in listSnapshot.docs) {
        if (documentSnapshot.exists) {
          final GroceryList groceryList = GroceryList.fromJson(documentSnapshot.data()!);
          result.add(groceryList);
        }
      }
    }
    return result;
  }

  Future<Set<AppUser>> getUsers({required GroceryList groceryList}) async {
    final Set<AppUser> users = <AppUser>{};

    final CollectionReference<Map<String, dynamic>> usersRef = _firestore.collection('users');
    final QuerySnapshot<Map<String, dynamic>> querySnapshot = await usersRef.get();

    for (final QueryDocumentSnapshot<Map<String, dynamic>> doc in querySnapshot.docs) {
      final List<dynamic>? requests = doc['requests'] as List<dynamic>?;
      final List<dynamic>? groceryListIds = doc['groceryListIds'] as List<dynamic>?;

      bool hasRequestFromGroceryList = false;
      bool hasGroceryListId = false;

      if (requests != null) {
        for (final dynamic request in requests) {
          if (request is Map<String, dynamic> && request['groceryListId'] == groceryList.groceryListId) {
            hasRequestFromGroceryList = true;
            break;
          }
        }
      }

      if (groceryListIds != null) {
        hasGroceryListId = groceryListIds.contains(groceryList.groceryListId);
      }

      if (!hasRequestFromGroceryList && !hasGroceryListId) {
        users.add(
          AppUser(
            uid: doc['uid'] as String,
            email: doc['email'] as String,
            username: doc['username'] as String,
          ),
        );
      }
    }

    return users;
  }

  Future<AppUser> sendRequest({
    required String senderUsername,
    required String receiverId,
    required String groceryListId,
    required String groceryListName,
  }) async {
    final User currentUser = _auth.currentUser!;

    final DocumentReference<Map<String, dynamic>> userRef = _firestore.doc('users/$receiverId');
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await userRef.get();

    if (!snapshot.exists) {
      throw Exception('User document not found!');
    }

    final Map<String, dynamic>? listData = snapshot.data();

    final List<dynamic>? requests = listData?['requests'] as List<dynamic>?;
    final List<dynamic>? groceryListIds = listData?['groceryListIds'] as List<dynamic>?;

    final AddRequest newRequest = AddRequest(
      senderName: senderUsername,
      senderEmail: currentUser.email!,
      senderId: currentUser.uid,
      groceryListId: groceryListId,
      listName: groceryListName,
    );

    final Map<String, dynamic> newRequestJson = newRequest.toJson();

    bool requestExists = false;

    // Check if the request already exists in the requests list
    if (requests != null) {
      for (final dynamic request in requests) {
        if (request is Map<String, dynamic>) {
          final AddRequest existingRequest = AddRequest.fromJson(request);
          if (existingRequest.senderId == newRequest.senderId &&
              existingRequest.groceryListId == newRequest.groceryListId) {
            requestExists = true;
            break;
          }
        }
      }
    }

    bool groceryListIdExists = false;
    if (groceryListIds != null) {
      groceryListIdExists = groceryListIds.contains(groceryListId);
    }

    if (!requestExists && !groceryListIdExists) {
      if (requests != null) {
        final Set<Map<String, dynamic>> updatedRequestsSet = requests
            .map((dynamic req) => Map<String, dynamic>.from(req as Map<String, dynamic>))
            .toSet()
          ..add(newRequestJson);
        listData!['requests'] = updatedRequestsSet.toList();
      } else {
        listData!['requests'] = <Map<String, dynamic>>[newRequestJson];
      }

      await userRef.update(listData);
    }

    final String email = listData?['email'] as String;
    final String username = listData?['username'] as String;

    return AppUser(uid: receiverId, email: email, username: username);
  }

  Future<AddRequest> acceptRequest({required String groceryListId, required AddRequest requestToRemove}) async {
    final User currentUser = _auth.currentUser!;
    final DocumentReference<Map<String, dynamic>> userRef = _firestore.doc('users/${currentUser.uid}');
    final DocumentSnapshot<Map<String, dynamic>> userSnapshot = await userRef.get();

    if (!userSnapshot.exists) {
      throw Exception('User document not found!');
    }

    final Map<String, dynamic>? userData = userSnapshot.data();

    if (userData == null) {
      throw Exception('User data is null!');
    }

    // Update user's groceryListIds
    final List<dynamic>? groceryListIds = userData['groceryListIds'] as List<dynamic>?;
    final Set<String> updatedGroceryListIds = (groceryListIds ?? <String>[]).map((dynamic id) => id as String).toSet()
      ..add(groceryListId);

    userData['groceryListIds'] = updatedGroceryListIds.toList();

    await userRef.update(userData);

    // Fetch and update the grocery list document
    final DocumentReference<Map<String, dynamic>> groceryListRef = _firestore.doc('lists/$groceryListId');
    final DocumentSnapshot<Map<String, dynamic>> groceryListSnapshot = await groceryListRef.get();

    if (!groceryListSnapshot.exists) {
      throw Exception('Grocery list document not found!');
    }

    final Map<String, dynamic>? groceryListData = groceryListSnapshot.data();

    if (groceryListData == null) {
      throw Exception('Grocery list data is null!');
    }

    // Increment usersCount
    final int currentUsersCount = groceryListData['usersCount'] as int? ?? 0;
    groceryListData['usersCount'] = currentUsersCount + 1;

    await groceryListRef.update(groceryListData);

    // Remove the request from the user's requests
    final List<Map<String, dynamic>>? requests = (userData['requests'] as List<dynamic>?)?.map((dynamic item) {
      return item as Map<String, dynamic>;
    }).toList();

    final Map<String, dynamic> requestJsonToRemove = requestToRemove.toJson();

    if (requests != null && requests.isNotEmpty) {
      requests.removeWhere((Map<String, dynamic> element) => _mapsAreEqual(element, requestJsonToRemove));
      userData['requests'] = requests;

      await userRef.update(userData);
    }

    return requestToRemove;
  }

  Future<void> removeRequest({required AddRequest requestToRemove}) async {
    final User currentUser = _auth.currentUser!;
    final DocumentReference<Map<String, dynamic>> userRef = _firestore.doc('users/${currentUser.uid}');
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await userRef.get();

    if (!snapshot.exists) {
      throw Exception('User document not found!');
    }

    final Map<String, dynamic>? listData = snapshot.data();
    final List<Map<String, dynamic>>? requests =
        (listData?['requests'] as List<dynamic>?)?.map((dynamic item) => item as Map<String, dynamic>).toList();

    final Map<String, dynamic> requestJsonToRemove = requestToRemove.toJson();

    if (requests != null && requests.isNotEmpty) {
      requests.removeWhere((Map<String, dynamic> element) => _mapsAreEqual(element, requestJsonToRemove));
      listData!['requests'] = requests;

      await userRef.update(listData);
    }
  }

  bool _mapsAreEqual(Map<String, dynamic> map1, Map<String, dynamic> map2) {
    return map1.length == map2.length &&
        map1.entries.every((MapEntry<String, dynamic> entry) => map2[entry.key] == entry.value);
  }

  Stream<List<AddRequest>> listenForRequests({required bool isNotifications}) {
    final User currentUser = _auth.currentUser!;
    final DocumentReference<Map<String, dynamic>> userRef = _firestore.collection('users').doc(currentUser.uid);

    return userRef.snapshots().asyncMap((DocumentSnapshot<Map<String, dynamic>> snapshot) async {
      if (!snapshot.exists) {
        return <AddRequest>[];
      }

      final List<dynamic>? requests = snapshot.data()?['requests'] as List<dynamic>?;

      if (requests == null || requests.isEmpty) {
        return <AddRequest>[];
      }

      final List<AddRequest> validRequests = <AddRequest>[];
      final List<AddRequest> invalidRequests = <AddRequest>[];

      for (final dynamic request in requests) {
        final AddRequest addRequest = AddRequest.fromJson(request as Map<String, dynamic>);
        final DocumentReference<Map<String, dynamic>> groceryListRef =
            _firestore.collection('lists').doc(addRequest.groceryListId);
        final DocumentSnapshot<Map<String, dynamic>> groceryListSnapshot = await groceryListRef.get();

        if (groceryListSnapshot.exists) {
          validRequests.add(addRequest);
        } else {
          invalidRequests.add(addRequest);
        }
      }

      if (invalidRequests.isNotEmpty) {
        requests.removeWhere((dynamic request) {
          final AddRequest addRequest = AddRequest.fromJson(request as Map<String, dynamic>);
          return invalidRequests
              .any((AddRequest invalidRequest) => invalidRequest.groceryListId == addRequest.groceryListId);
        });

        await userRef.update(<String, dynamic>{'requests': requests});
      }

      return validRequests;
    });
  }
}
