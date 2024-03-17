import 'dart:convert';

import 'package:do_you_groceries/src/models/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthApi {
  AuthApi(this._auth, this._preferences);

  final FirebaseAuth _auth;
  final SharedPreferences _preferences;
  static const String _kUserProductListString = 'user_product_list';

  Future<AppUser?> getCurrentUser() async {
    if (_auth.currentUser != null) {

      return AppUser(
          uid: _auth.currentUser!.uid,
          email: _auth.currentUser!.email!,
          username: _auth.currentUser!.displayName!,
      );
    }

    return null;
  }

  Future<AppUser> login({required String email, required String password}) async {
    final UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);

    return AppUser(
      uid: credential.user!.uid,
      email: email,
      username: email, // credential.user!.displayName, //-- needs fixing; won't allow login action
    );
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  Future<AppUser> create({required String email, required String password, required String username}) async {
    final UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);

    return AppUser(uid: credential.user!.uid, email: email, username: username);
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

  Future<List<Product>> getCurrentProductList() async {
    final String? data = await _preferences.getString(_kUserProductListString);

    List<Product> products;

    if (data != null) {
      products = List<Product>.from(jsonDecode(data) as List<dynamic>);
    } else {
      products = <Product>[];
    }
    print('AAAA: $products');
    return products;
  }
}
