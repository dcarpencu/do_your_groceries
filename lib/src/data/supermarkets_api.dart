import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_you_groceries/src/models/index.dart';

class SuperMarketsApi {
  SuperMarketsApi(this._firestore);

  final FirebaseFirestore _firestore;

  Future<List<Product>> getSuperMarketProducts({
    required String supermarketName,
    required String category,
    required int pageNumber,
  }) async {
    final QuerySnapshot<Map<String, dynamic>> querySnapshot = await _firestore
        .collection(supermarketName)
        .doc('categories')
        .collection(category)
        .doc('pages')
        .collection('page_$pageNumber')
        .get();

    if (querySnapshot.docs.isEmpty) {
      return <Product>[];
    }

    final List<Product> products = <Product>[];

    for (final DocumentSnapshot<Map<String, dynamic>> docSnapshot in querySnapshot.docs) {
      final Product product = Product.fromJson(docSnapshot.data()!);
      products.add(product);
    }
    //print('\n\n\n\n\n\n\n\n $products \n\n\n\n\n\n\n');
    return products;
  }
}
