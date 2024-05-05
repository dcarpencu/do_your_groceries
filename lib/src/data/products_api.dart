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

        // final List<DocumentSnapshot<Map<String, dynamic>>> productSnapshots = await Future.wait(
        //   productIds!.map((dynamic productId) => _firestore.collection('/Auchan/categories/legume/pages/page_1').doc(productId.toString()).get()),
        // );

        final List<DocumentSnapshot<Map<String, dynamic>>> productSnapshots =
            <DocumentSnapshot<Map<String, dynamic>>>[];

        for (final dynamic productId in productIds!) {
          // Find the index of the last occurrence of '/'
          final int lastIndex = productId.toString().lastIndexOf('/');

          // Extract the collectionPath and documentId
          final String collectionPath = productId.toString().substring(0, lastIndex);
          final String documentId = productId.toString().substring(lastIndex + 1);

          final DocumentSnapshot<Map<String, dynamic>> snapshot =
              await _firestore.collection(collectionPath).doc(documentId).get();
          productSnapshots.add(snapshot);
        }

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

    productIds?.add('products/${ref.id}');
    listData['productIds'] = productIds;

    await listRef.update(listData);
  }

  Future<void> addProductToGroceryList(Product product, String groceryListId, int page,
      {required String marketName, required String category,}) async {
    final DocumentReference<Map<String, dynamic>> listRef = _firestore.collection('lists').doc(groceryListId);
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await listRef.get();

    final Map<String, dynamic> listData = snapshot.data()!;

    final List<dynamic>? productIds =
        (snapshot.data()?['productIds'] as List<dynamic>?)?.map((dynamic id) => id.toString()).toList();

    productIds?.add('/$marketName/categories/$category/pages/page_$page/${product.productId}');
    listData['productIds'] = productIds;

    await listRef.update(listData);
  }
}
