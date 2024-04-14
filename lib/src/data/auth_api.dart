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
    // TODO Maybe add groceryList parameter -- shall see later

    await _firestore.doc('users/${user.uid}').set(user.toJson());

    return user;
  }

  Future<Set<GroceryList>> getLists() async {
    final User? user = _auth.currentUser;
    final DocumentSnapshot<Map<String, dynamic>> userSnapshot =
        await _firestore.collection('users').doc(user!.uid).get();

    // Get the 'groceryLists' field from the document/**/
    final dynamic groceryListsData = userSnapshot.data()?['groceryLists'];

    if (groceryListsData is List) {
      // Convert the groceryLists array to a Set of GroceryList objects
      final Set<GroceryList> groceryLists =
          groceryListsData.map((dynamic data) => GroceryList.fromJson(data as Map<String, dynamic>)).toSet();

      return groceryLists;
    } else {
      return <GroceryList>{};
    }
  }

  // Stream<List<GroceryList>> listenForLists() {
  //   final User? user = _auth.currentUser;
  //   return _firestore
  //       .collection('users/${user!.uid}/groceryLists')
  //       .snapshots()
  //       .map((snapshot) {
  //     return snapshot.docs
  //         .map(doc) => GroceryList.fromJson(doc.data()))
  //         .toList();
  //   });
  // }

  Stream<List<GroceryList>> listenForLists() {
    final User? user = _auth.currentUser;

    return _firestore
        .collection('users/${user!.uid}/groceryLists')
        .snapshots()
        .map((QuerySnapshot<Map<String, dynamic>> snapshot) {
      return snapshot.docs
          .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => GroceryList.fromJson(doc.data()))
          .toList();
    });
  }

  Future<void> createGroceryList({
    required String title,
  }) async {
    final User? user = _auth.currentUser;
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('users').doc(user!.uid);
    final GroceryList groceryList = GroceryList(uid: _auth.currentUser!.uid, title: title);

    await ref.update(<Object, Object?>{
      'groceryLists': FieldValue.arrayUnion(<Object>[groceryList.toJson()]),
    });
  }
}
