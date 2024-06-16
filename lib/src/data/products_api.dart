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
          return <Product>[];
        }

        final List<Future<DocumentSnapshot<Map<String, dynamic>>>> readOperations =
        <Future<DocumentSnapshot<Map<String, dynamic>>>>[];

        for (final dynamic productId in productIds) {
          final int lastIndex = productId.toString().lastIndexOf('/');
          final String collectionPath = productId.toString().substring(0, lastIndex);
          final String documentId = productId.toString().substring(lastIndex + 1);

          final DocumentReference<Map<String, dynamic>> docRef = _firestore.collection(collectionPath).doc(documentId);
          readOperations.add(docRef.get());
        }

        final List<DocumentSnapshot<Map<String, dynamic>>> productSnapshots = await Future.wait(readOperations);

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

  Future<List<Product>> getProductsAfterEdit({required String groceryListId}) async {
    return _firestore
        .collection('lists')
        .doc(groceryListId)
        .snapshots()
        .asyncMap((DocumentSnapshot<Map<String, dynamic>> snapshot) async {
      if (snapshot.exists) {
        final List<dynamic>? productIds =
        (snapshot.data()?['productIds'] as List<dynamic>?)?.map((dynamic id) => id.toString()).toList();

        if (productIds == null || productIds.isEmpty) {
          return <Product>[];
        }

        final List<Future<DocumentSnapshot<Map<String, dynamic>>>> readOperations =
        <Future<DocumentSnapshot<Map<String, dynamic>>>>[];

        for (final dynamic productId in productIds) {
          final int lastIndex = productId.toString().lastIndexOf('/');
          final String collectionPath = productId.toString().substring(0, lastIndex);
          final String documentId = productId.toString().substring(lastIndex + 1);

          final DocumentReference<Map<String, dynamic>> docRef = _firestore.collection(collectionPath).doc(documentId);
          readOperations.add(docRef.get());
        }

        final List<DocumentSnapshot<Map<String, dynamic>>> productSnapshots = await Future.wait(readOperations);

        final List<Product> products = productSnapshots
            .where((DocumentSnapshot<Map<String, dynamic>> snapshot) => snapshot.exists)
            .map((DocumentSnapshot<Map<String, dynamic>> snapshot) => Product.fromJson(snapshot.data()!))
            .toList();

        return products;
      } else {
        return <Product>[];
      }
    }).first;
  }

  Future<List<Product>> getProducts({required Product product}) async {
    print('\n\n\n\n GET RELATED PRODUCTS: \n\n');
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
            page: doc['page'] as int,
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
          page: doc['page'] as int,
        ),
      );
    }

    return relatedProducts;
  }

  Future<void> createProduct({
    required bool createdByUser,
    required String groceryListId,
    required String image,
    required String name,
    required String uid,
    required double price,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('products').doc();
    final Product product =
    Product(productId: ref.id,
        name: name,
        price: price,
        image: image,
        createdByUser: createdByUser,
        category: '');

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

  Future<void> addProductToGroceryList(Product product,
      String groceryListId,) async {
    final DocumentReference<Map<String, dynamic>> listRef = _firestore.collection('lists').doc(groceryListId);
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await listRef.get();

    final Map<String, dynamic> listData = snapshot.data()!;

    final List<dynamic>? productIds =
    (snapshot.data()?['productIds'] as List<dynamic>?)?.map((dynamic id) => id.toString()).toList();

    productIds
        ?.add('/${product.supermarket}/categories/${product.category}/pages/page_${product.page}/${product.productId}');
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

  Future<void> updateProduct({
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

    productsList.add(
      Product(
        productId: product.productId,
        name: name,
        image: image,
        price: price,
        category: '',
      ),
    );
  }

  Future<Product> switchProduct({
    required Product selectedProduct,
    required Product oldProduct,
    required GroceryList groceryList,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('lists').doc(groceryList.groceryListId);

    final DocumentSnapshot<Map<String, dynamic>> snapshot = await ref.get();

    if (!snapshot.exists) {
      throw Exception('Grocery list does not exist');
    }

    final Map<String, dynamic>? listData = snapshot.data();

    if (listData == null) {
      throw Exception('Grocery list data is null');
    }

    final List<dynamic> productIdsDynamic = listData['productIds'] as List<dynamic>? ?? <dynamic>[];
    final List<String> productIds = productIdsDynamic.map((dynamic id) => id.toString()).toList();

    print('\n\n\n\n BEFORE: $productIds \n\n');
    print('\n\n\n\n PRODUCT TO BE RM: ${oldProduct.productId} \n\n');

    if (productIds.contains(
      '/${oldProduct.supermarket}/categories/${oldProduct.category}/pages/page_${oldProduct.page}/${oldProduct
          .productId}',
    )) {
      await ref.update(<Object, Object?>{
        'productIds': FieldValue.arrayRemove(<String>[
          '/${oldProduct.supermarket}/categories/${oldProduct.category}/pages/page_${oldProduct.page}/${oldProduct
              .productId}',
        ]),
      });
    }

    if (!productIds.contains(
      '/${selectedProduct.supermarket}/categories/${selectedProduct.category}/pages/page_${selectedProduct
          .page}/${selectedProduct.productId}',
    )) {
      await ref.update(<Object, Object?>{
        'productIds': FieldValue.arrayUnion(<String>[
          '/${selectedProduct.supermarket}/categories/${selectedProduct.category}/pages/page_${selectedProduct
              .page}/${selectedProduct.productId}',
        ]),
      });
    }

    // Fetch updated state for logging purposes, not typically required in production
    final DocumentSnapshot<Map<String, dynamic>> updatedSnapshot = await ref.get();
    final List<dynamic> updatedProductIdsDynamic =
        updatedSnapshot.data()?['productIds'] as List<dynamic>? ?? <dynamic>[];
    final List<String> updatedProductIds = updatedProductIdsDynamic.map((dynamic id) => id.toString()).toList();

    print('\n\n\n\n AFTER: $updatedProductIds \n\n');

    return oldProduct;
  }

  Future<List<Product>> smartUpdateList({
    required List<Product> groceryListProducts,
    required GroceryList groceryList,
  }) async {
    List<Product> generatedProducts = <Product>[];
    final Map<String, int> frequencyMarkets = <String, int>{
      'Auchan': 0,
      'Kaufland': 0,
      'Carrefour': 0,
      'Penny': 0,
      'Profi': 0,
      'Mega Image': 0,
    };

    // Handle the case with only one product in the basket
    if (groceryListProducts.length == 1) {
      final Product product = groceryListProducts[0];
      final List<Product> productsRelated = await getProducts(product: product);

      if (productsRelated.isNotEmpty) {
        final List<Product> productsSorted = _sortProductsByPrice(productsRelated);
        final Product bestProduct = productsSorted[0];

        if (product.price != bestProduct.price) {
          generatedProducts = <Product>[bestProduct];
          await switchProduct(
            selectedProduct: bestProduct,
            oldProduct: product,
            groceryList: groceryList,
          );
        } else {
          generatedProducts = <Product>[product];
        }
      } else {
        generatedProducts = <Product>[product];
      }

      return generatedProducts;
    }

    // Count frequency of best prices across supermarkets
    for (Product product in groceryListProducts) {
      final List<Product> productsRelated = await getProducts(product: product);
      if (productsRelated.isNotEmpty) {
        final List<Product> productsSorted = _sortProductsByPrice(productsRelated);
        frequencyMarkets[productsSorted[0].supermarket] =
            frequencyMarkets[productsSorted[0].supermarket]! + 1;
      }
    }

    final String highestSupermarket = frequencyMarkets.entries
        .reduce((MapEntry<String, int> a, MapEntry<String, int> b) => a.value > b.value ? a : b)
        .key;

    for (Product product in groceryListProducts) {
      final List<Product> productsRelated = await getProducts(product: product);
      if (productsRelated.isNotEmpty) {
        final List<Product> productsSorted = _sortProductsByPrice(productsRelated);

        // Check if there is a product from the highest frequency supermarket
        Product? bestProductInSupermarket;
        try {
          bestProductInSupermarket = productsSorted.firstWhere(
                (Product p) => p.supermarket == highestSupermarket,
          );
        } catch (e) {
          bestProductInSupermarket = null;
        }

        if (bestProductInSupermarket != null && bestProductInSupermarket.price < product.price) {
          generatedProducts.add(bestProductInSupermarket);
          await switchProduct(
            selectedProduct: bestProductInSupermarket,
            oldProduct: product,
            groceryList: groceryList,
          );
        } else {
          Product? bestProductInCurrentSupermarket;
          try {
            bestProductInCurrentSupermarket = productsSorted.firstWhere(
                  (Product p) => p.supermarket == product.supermarket && p.price < product.price,
            );
          } catch (e) {
            bestProductInCurrentSupermarket = null;
          }

          if (bestProductInCurrentSupermarket != null) {
            generatedProducts.add(bestProductInCurrentSupermarket);
            await switchProduct(
              selectedProduct: bestProductInCurrentSupermarket,
              oldProduct: product,
              groceryList: groceryList,
            );
          } else {
            generatedProducts.add(product);
          }
        }
      } else {
        generatedProducts.add(product);
      }
    }

    return generatedProducts;
  }

  List<Product> _sortProductsByPrice(List<Product> products) {
    return List<Product>.from(products)
      ..sort((Product a, Product b) => a.price.compareTo(b.price));
  }
}