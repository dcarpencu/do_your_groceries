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

    await _firestore.doc('users/${user.uid}').set(user.toJson());

    return user;
  }

  Future<GroceryList> createGroceryList({
    required String title,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('lists').doc();
    final GroceryList groceryList = GroceryList(groceryListId: ref.id, title: title);

    await ref.set(groceryList.toJson());

    return groceryList;
  }

  Future<AppUser> addGroceryListToUser({required String groceryListId}) async {
    final User? currentUser = _auth.currentUser;
    final DocumentReference<Map<String, dynamic>> userRef = _firestore.doc('users/${currentUser?.uid}');
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await userRef.get();

    final Map<String, dynamic> userData = snapshot.data()!;

    final List<dynamic>? groceryListIds =
    (snapshot.data()?['groceryListIds'] as List<dynamic>?)?.map((dynamic id) => id.toString()).toList();

    groceryListIds?.add(groceryListId);
    userData['groceryListIds'] = groceryListIds;
    await userRef.update(userData);

    print('\n--------------- USER DATA CHECK');
    print(userData);
    print('\n');

    return AppUser.fromJson(userData);
  }

  Future<Set<GroceryList>> getLists() async {
    final User? currentUser = _auth.currentUser;
    final DocumentReference<Map<String, dynamic>> userRef =
    _firestore.doc('users/${currentUser?.uid}');
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await userRef.get();

    if (!snapshot.exists) {
      throw Exception('User document not found!');
    }

    final List<dynamic>? groceryListIds =
    (snapshot.data()?['groceryListIds'] as List<dynamic>?)?.map((dynamic id) => id.toString()).toList();


    print('\n\n PLEASE WORK DEAR GOD');
    print(groceryListIds);
    print('\n');

    final Set<GroceryList> result = <GroceryList>{};

    if (groceryListIds != null && groceryListIds.isNotEmpty) {
      for (final String listId in groceryListIds as List<String>) {
        final DocumentSnapshot<Map<String, dynamic>> listSnapshot =
        await _firestore.collection('lists').doc(listId).get();
        // print('\n---------- \nAICIAI BUBA\n');
        // print(listSnapshot.data());

        if (listSnapshot.exists) {
          final groceryList =
          GroceryList.fromJson(listSnapshot.data()!);
          result.add(groceryList);
        }
      }
    }

    return result;
  }

  Stream<List<Product>> listenForLists(String groceryListId) {
    return _firestore
        .collection('products')
        .where('groceryListId', isEqualTo: groceryListId)
        .snapshots()
        .map((QuerySnapshot<Map<String, dynamic>> snapshot) {
      return snapshot.docs
          .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Product.fromJson(doc.data()))
          .toList();
    });
  }
}
