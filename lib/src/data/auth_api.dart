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

  // Future<List<Product>?> updateUserProductsList(String uid, Product product, {required bool add}) async {
  //   await _firestore.runTransaction((Transaction transaction) async {
  //     final DocumentSnapshot<Map<String, dynamic>> snapshot = await transaction.get(_firestore.doc('users/$uid'));
  //     AppUser user = AppUser.fromJson(snapshot.data()!);
  //     productMap = product.toMap()
  //     if (add) {
  //
  //       user = user.copyWith(userProductList: <Map>[...user.userProductList, product]);
  //     } else {
  //       user = user.copyWith(userProductList: <Product>[...user.userProductList]..remove(product));
  //     }
  //     transaction.set(_firestore.doc('/users/$uid'), user.toJson());
  //
  //     return user.userProductList;
  //   });
  //
  //   return null;
  // }

  // Future<List<Product>> getUserProductsList() async{
  //
  // }

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
    final GroceryList groceryList = GroceryList(uid: _auth.currentUser!.uid, title: title);

    await ref.set(groceryList.toJson());
  }

  // ignore: flutter_style_todos
  // TODO: Remove duplicates from firestore
}
