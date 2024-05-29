import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
    final GroceryList groceryList =
        GroceryList(groceryListId: ref.id, title: title, selectedIcon: selectedIcon, description: description);

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

  Future<GroceryList> removeGroceryList({
    required GroceryList groceryList,
  }) async {
    final DocumentReference<Map<String, dynamic>> groceryListRef =
        _firestore.collection('lists').doc(groceryList.groceryListId);
    final DocumentSnapshot<Map<String, dynamic>> groceryListSnapshot = await groceryListRef.get();

    if (groceryListSnapshot.exists) {
      final Map<String, dynamic> groceryListData = groceryListSnapshot.data()!;
      final List<dynamic>? productIds = groceryListData['productIds'] as List<dynamic>?;

      final WriteBatch batch = _firestore.batch();
      // Delete each product associated with the grocery list
      if (productIds != null) {
        for (final dynamic productId in productIds) {
          final List<dynamic> parts = productId.toString().split('/');
          print('\n\n${parts.first}\n\n ${parts.last}');
          print('\n\nPRODUCT ID: $productId\n');
          if (parts.first == 'products') {
            final DocumentReference<Map<String, dynamic>> productRef =
                _firestore.collection('products').doc(parts.last as String);
            print('\n\nPRODUCT ref: $productRef\n');
            batch.delete(productRef);
          }
        }
      }

      final User? currentUser = _auth.currentUser;
      if (currentUser != null) {
        final DocumentReference<Map<String, dynamic>> userRef = _firestore.doc('users/${currentUser.uid}');
        final DocumentSnapshot<Map<String, dynamic>> userSnapshot = await userRef.get();

        if (userSnapshot.exists) {
          final Map<String, dynamic> userData = userSnapshot.data()!;
          final List<dynamic>? groceryListIds =
              (userData['groceryListIds'] as List<dynamic>?)?.map((dynamic id) => id.toString()).toList();

          if (groceryListIds != null) {
            groceryListIds.remove(groceryList.groceryListId);
            userData['groceryListIds'] = groceryListIds;
            batch.update(userRef, userData);
          }
        }
      }

      // Delete the grocery list itself
      batch.delete(groceryListRef);

      try {
        await batch.commit();
      } catch (e) {
        print('Failed to remove grocery list: $e');
        // Handle errors accordingly, possibly rethrowing the error or returning a failure result
        rethrow;
      }
    }

    return groceryList;
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

  Future<Set<AppUser>> getUsers() async {
    final Set<AppUser> users = <AppUser>{};

    final CollectionReference<Map<String, dynamic>> usersRef = _firestore.collection('users');
    final QuerySnapshot<Map<String, dynamic>> querySnapshot = await usersRef.get();

    for (final QueryDocumentSnapshot<Map<String, dynamic>> doc in querySnapshot.docs) {
      users.add(
        AppUser(
          uid: doc['uid'] as String,
          email: doc['email'] as String,
          username: doc['username'] as String,
        ),
      );
    }

    return users;
  }

  Future<void> sendRequest({required String receiverId, required String groceryListId}) async {
    final User currentUser = _auth.currentUser!;

    final DocumentReference<Map<String, dynamic>> userRef = _firestore.doc('users/$receiverId');
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await userRef.get();

    if (!snapshot.exists) {
      throw Exception('User document not found!');
    }

    final Map<String, dynamic>? listData = snapshot.data();

    final List<dynamic>? requests = listData?['requests'] as List<dynamic>?;

    final AddRequest request = AddRequest(
        senderName: 'david', senderEmail: currentUser.email!, senderId: currentUser.uid, groceryListId: groceryListId);

    if (requests != null) {
      // Ensure requests is a List<String> by converting each element to String
      final List<String> updatedRequests = requests.map((dynamic id) => id.toString()).toList();
      updatedRequests.add(request.toJson().toString());
      listData!['requests'] = updatedRequests;
    } else {
      // Initialize requests list if it doesn't exist
      listData!['requests'] = [request.toJson().toString()];
    }

    await userRef.update(listData);
  }
}
