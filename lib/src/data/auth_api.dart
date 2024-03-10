import 'package:do_you_groceries/src/models/index.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthApi {
  AuthApi(this._auth);

  final FirebaseAuth _auth;

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
}
