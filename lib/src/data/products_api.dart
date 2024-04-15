import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_you_groceries/src/models/index.dart';

class ProductsApi {
  ProductsApi(this._firestore);

  final FirebaseFirestore _firestore;

  Stream<List<Product>> listenForProducts(String groceryListId) {
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

  Future<void> createProduct({
    required String groceryListId,
    required String name,
    required String uid,
    required double price,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('products').doc();
    final Product product = Product(productId: ref.id, name: name, price: price, groceryListId: groceryListId);

    await ref.set(product.toJson());
  }
}
