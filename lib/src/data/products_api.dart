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
      print('\n\n\n ------- groceryListId CREATED: $groceryListId\n\n\n\n');
      if (snapshot.exists) {
        final List<dynamic>? productIds =
        (snapshot.data()?['productIds'] as List<dynamic>?)?.map((dynamic id) => id.toString()).toList();
        print('\n\n\n ------- ID prods CREATED: $productIds\n\n\n\n');

        // Fetch documents from the 'products' collection based on 'productIds'
        final List<DocumentSnapshot<Map<String, dynamic>>> productSnapshots =
        await Future.wait(productIds!.map((dynamic productId) => _firestore.collection('products').doc(productId.toString()).get()));


        // Convert document snapshots to Product objects
        final List<Product> products = productSnapshots
            .where((DocumentSnapshot<Map<String, dynamic>> productSnapshot) => productSnapshot.exists)
            .map((DocumentSnapshot<Map<String, dynamic>> productSnapshot) => Product.fromJson(productSnapshot.data()!))
            .toList();
        print('\n\n\n ------- PRODUSE CREATED: $products\n\n\n\n');
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
    print('\n\n\n ------- PRODUCT CREATED: $product\n\n\n\n');

    final DocumentReference<Map<String, dynamic>> listRef = _firestore.collection('lists').doc(groceryListId);
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await listRef.get();

    print('\n\n\n ------- snapshot CREATED: $snapshot\n\n\n\n');
    print('\n\n\n ------- groceryListId CREATED: $groceryListId\n\n\n\n');


    final Map<String, dynamic> listData = snapshot.data()!;

    print('\n\n\n ------- listData CREATED: $listData\n\n\n\n');

    final List<dynamic>? productIds =
    (snapshot.data()?['productIds'] as List<dynamic>?)?.map((dynamic id) => id.toString()).toList();

    print('\n\n\n ------- productIds CREATED: $productIds\n\n\n\n');

    productIds?.add(ref.id);
    listData['productIds'] = productIds;

    print('\n\n\n ------- FINAL LISTDATA CREATED: $productIds\n\n\n\n');

    await listRef.update(listData);
  }
}
