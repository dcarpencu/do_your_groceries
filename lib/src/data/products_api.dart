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

        if (productIds == null || productIds.isEmpty) {
          return <Product>[]; // Return empty list if there are no products
        }

        // Create a list to hold all the batched reads
        final List<Future<DocumentSnapshot<Map<String, dynamic>>>> readOperations =
            <Future<DocumentSnapshot<Map<String, dynamic>>>>[];

        // Iterate through productIds to add batched reads to readOperations list
        for (final dynamic productId in productIds) {
          final int lastIndex = productId.toString().lastIndexOf('/');
          final String collectionPath = productId.toString().substring(0, lastIndex);
          final String documentId = productId.toString().substring(lastIndex + 1);

          final DocumentReference<Map<String, dynamic>> docRef = _firestore.collection(collectionPath).doc(documentId);
          readOperations.add(docRef.get());
        }

        // Execute all batched reads concurrently
        final List<DocumentSnapshot<Map<String, dynamic>>> productSnapshots = await Future.wait(readOperations);

        // Filter out snapshots that do not exist and map remaining snapshots to Product objects
        final List<Product> products = productSnapshots
            .where((DocumentSnapshot<Map<String, dynamic>> snapshot) => snapshot.exists)
            .map((DocumentSnapshot<Map<String, dynamic>> snapshot) => Product.fromJson(snapshot.data()!))
            .toList();

        return products;
      } else {
        return <Product>[];
      }
    });
  }

  Future<List<Product>> getProducts({required Product product}) async {
    print('\n\n\n\n GET PRODUCTS: \n\n');
    final List<Product> relatedProducts = <Product>[];

    if (product.supermarket.isNotEmpty) {
      final CollectionReference<Map<String, dynamic>> productsRef =
          _firestore.collection('tags/${product.category}/${product.tag}');

      final QuerySnapshot<Map<String, dynamic>> querySnapshot = await productsRef.get();

      // Loop through documents and convert them to Product objects
      for (final QueryDocumentSnapshot<Map<String, dynamic>> doc in querySnapshot.docs) {
        relatedProducts.add(
          Product(
            name: doc['name'] as String,
            price: doc['price'] as double,
            productId: doc.id,
            category: product.category,
            supermarket: doc['supermarket'] as String,
            image: doc['image'] as String,
          ),
        );
      }
    }

    return relatedProducts;
  }

  Future<List<Product>> getProductsForCamera({required String category, required String tag}) async {
    print('\n\n\n\n GET PRODUCTS: \n\n');
    final List<Product> relatedProducts = <Product>[];

    final CollectionReference<Map<String, dynamic>> productsRef = _firestore.collection('tags/$category/$tag');

    final QuerySnapshot<Map<String, dynamic>> querySnapshot = await productsRef.get();

    // Loop through documents and convert them to Product objects
    for (final QueryDocumentSnapshot<Map<String, dynamic>> doc in querySnapshot.docs) {
      relatedProducts.add(
        Product(
          name: doc['name'] as String,
          price: doc['price'] as double,
          productId: doc.id,
          category: category,
          supermarket: doc['supermarket'] as String,
          image: doc['image'] as String,
        ),
      );
    }

    return relatedProducts;
  }

  Future<void> createProduct(
      {required bool createdByUser,
    required String groceryListId,
    required String image,
    required String name,
    required String uid,
    required double price,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('products').doc();
    final Product product =
        Product(productId: ref.id, name: name, price: price, image: image, createdByUser: createdByUser, category: '');

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

  Future<void> addProductToGroceryList(
    Product product,
    String groceryListId,
    int page, {
    required String marketName,
    required String category,
  }) async {
    final DocumentReference<Map<String, dynamic>> listRef = _firestore.collection('lists').doc(groceryListId);
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await listRef.get();

    final Map<String, dynamic> listData = snapshot.data()!;

    final List<dynamic>? productIds =
        (snapshot.data()?['productIds'] as List<dynamic>?)?.map((dynamic id) => id.toString()).toList();

    productIds?.add('/$marketName/categories/$category/pages/page_$page/${product.productId}');
    listData['productIds'] = productIds;

    await listRef.update(listData);
  }

  Future<void> removeProductFromGroceryList({
    required String groceryListId,
    required Product product,
  }) async {
    final DocumentReference<Map<String, dynamic>> listRef = _firestore.collection('lists').doc(groceryListId);
    //final DocumentReference<Map<String, dynamic>> productRef = _firestore.collection('products').doc(product.productId);

    final DocumentSnapshot<Map<String, dynamic>> snapshot = await listRef.get();

    if (!snapshot.exists) {
      throw Exception('Grocery list does not exist');
    }

    final Map<String, dynamic>? listData = snapshot.data();

    if (listData == null) {
      throw Exception('Grocery list data is null');
    }

    final List<String> productIds =
        (listData['productIds'] as List<dynamic>?)?.map((dynamic id) => id.toString()).toList() ?? <String>[];

    print('\n\n\n\n BEFORE: $productIds \n\n');

    print('\n\n\n\n PRODUCT TO BE RM: ${product.productId} \n\n');

    productIds.removeWhere((String id) => id.contains(product.productId));

    print('\n\n\n\n BOR BOR FASULE: $productIds \n\n');

    listData['productIds'] = productIds;

    await listRef.update(listData);

    if (product.supermarket.isEmpty) {
      final DocumentReference<Map<String, dynamic>> productRef =
          _firestore.collection('products').doc(product.productId);
      await productRef.delete();
    }
  }

  Future<List<Product>> updateProduct({
    required String name,
    required double price,
    required String image,
    required Product product,
  }) async {
    final List<Product> productsList = <Product>[product];
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('products').doc(product.productId);

    final Map<String, dynamic> dataToUpdate = <String, dynamic>{
      'name': name,
      'price': price,
      'image': image,
    };

    await ref.update(dataToUpdate);

    productsList.add(Product(
      productId: product.productId, name: name, image: image, price: price, category: '',
    ),);

    return productsList;
  }
}
