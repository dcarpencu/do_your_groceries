
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

  // Future<void> updateFavoriteMovies(Product product, {required bool add}) async {
  //   final List<Product> products = getCurrentProductList();
  //
  //   if (add) {
  //     products.add(product);
  //   } else {
  //     products.remove(product);
  //   }
  //
  //   await _preferences.setString(_kUserProductListString, jsonEncode(products));
  // }

  // Future<List<Product>> getUserProducts() async {
  //   final User? currentUser = _auth.currentUser;
  //   if (currentUser != null) {
  //     final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore.doc('users/${currentUser.uid}').get();
  //
  //     if (snapshot.exists) {
  //       return AppUser.fromJson(snapshot.data()!);
  //     } else {
  //       final AppUser user =
  //       AppUser(uid: currentUser.uid, email: currentUser.email!, username: currentUser.displayName!);
  //
  //       await _firestore.doc('users/${user.uid}').set(user.toJson());
  //       return user;
  //     }
  //   }
  //   return null;
  // }
  // }


  // Future<void> updateFavorite(String uid, int id, {required bool add}) async {
  //   await _firestore.runTransaction((Transaction transaction) async {
  //     final DocumentSnapshot<Map<String, dynamic>> snapshot = await transaction.get(_firestore.doc('users/$uid'));
  //     AppUser user = AppUser.fromJson(snapshot.data()!);
  //     if (add) {
  //       user = user.copyWith(favoriteMovies: <int>[...user.favoriteMovies, id]);
  //     } else {
  //       user = user.copyWith(favoriteMovies: <int>[...user.favoriteMovies]..remove(id));
  //     }
  //
  //     transaction.set(_firestore.doc('/users/$uid'), user.toJson());
  //   });
  // }


}
