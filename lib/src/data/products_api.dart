import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_you_groceries/src/models/index.dart';

class ProductsApi {
  ProductsApi(this._firestore);

  final FirebaseFirestore _firestore;

  Stream<List<Product>> listenForProducts(String groceryListId) {
    return _firestore
        .collection('lists')
        .doc(groceryListId)
        .snapshots()
        .asyncMap((DocumentSnapshot<Map<String, dynamic>> snapshot) async {
      if (snapshot.exists) {
        final List<dynamic>? productIds =
            (snapshot.data()?['productIds'] as List<dynamic>?)?.map((dynamic id) => id.toString()).toList();

        final List<DocumentSnapshot<Map<String, dynamic>>> productSnapshots = await Future.wait(
            productIds!.map((dynamic productId) => _firestore.collection('products').doc(productId.toString()).get()),);

        final List<Product> products = productSnapshots
            .where((DocumentSnapshot<Map<String, dynamic>> productSnapshot) => productSnapshot.exists)
            .map((DocumentSnapshot<Map<String, dynamic>> productSnapshot) => Product.fromJson(productSnapshot.data()!))
            .toList();
        return products;
      } else {
        return <Product>[];
      }
    });
  }

  Future<void> createProduct({
    required String groceryListId,
    required String name,
    required String uid,
    required double price,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('products').doc();
    final Product product = Product(productId: ref.id, name: name, price: price);

    await ref.set(product.toJson());

    final DocumentReference<Map<String, dynamic>> listRef = _firestore.collection('lists').doc(groceryListId);
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await listRef.get();

    final Map<String, dynamic> listData = snapshot.data()!;

    final List<dynamic>? productIds =
        (snapshot.data()?['productIds'] as List<dynamic>?)?.map((dynamic id) => id.toString()).toList();

    productIds?.add(ref.id);
    listData['productIds'] = productIds;

    await listRef.update(listData);
  }
}
