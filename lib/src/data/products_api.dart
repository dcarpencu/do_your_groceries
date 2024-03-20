// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:do_you_groceries/src/models/index.dart';
//
// class ProductsApi {
//   ProductsApi(this._firestore);
//
//   final FirebaseFirestore _firestore;
//
//   Future <List<GroceryList>> getLists() async {
//     final DocumentReference<Map<String, dynamic>> listsRef = _firestore.collection('lists').doc();
//
//     await listsRef.get()
//   }
//
//   Future<List<GroceryList>> getLists() async {
//     QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore
//         .collection('lists')
//         .where('uid', isEqualTo: stire.state)
//         .get();
//
//     return snapshot.docs
//         .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) =>
//         Comment.fromJson(doc.data()))
//         .toList();
//   }
// }