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

  Future<AppUser> addGroceryListToUser({required String groceryListId}) async {
    final User? currentUser = _auth.currentUser;

    if (currentUser == null) {
      throw Exception('User not authenticated!');
    }

    final DocumentReference<Map<String, dynamic>> userRef = _firestore.doc('users/${currentUser.uid}');
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await userRef.get();

    if (!snapshot.exists) {
      throw Exception('User document not found!');
    }

    final Map<String, dynamic> userData = snapshot.data()!;
    final List<String> groceryListIds = (userData['groceryListIds'] as List<String>)..add(groceryListId);
    userData['groceryListIds'] = groceryListIds;

    await userRef.update(userData);

    return AppUser.fromJson(userData);
  }

  Future<AppUser> create({required String email, required String password, required String username}) async {
    final UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    final AppUser user = AppUser(uid: credential.user!.uid, email: email, username: username);

    await _firestore.doc('users/${user.uid}').set(user.toJson());

    return user;
  }

  Future<Set<GroceryList>> getLists() async {
    final QuerySnapshot<Map<String, dynamic>> snapshot =
        await _firestore.collection('lists').where('uid', isEqualTo: _auth.currentUser!.uid).get();

    return snapshot.docs
        .map(
          (QueryDocumentSnapshot<Map<String, dynamic>> doc) => GroceryList.fromJson(doc.data()),
        )
        .toSet();
  }

  Future<void> createGroceryList({
    required String title,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('lists').doc();
    final GroceryList groceryList = GroceryList(groceryListId: ref.id, title: title);

    await ref.set(groceryList.toJson());
  }
}
