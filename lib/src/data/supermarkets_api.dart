import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_you_groceries/src/data/market_links.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';

class SuperMarketsApi {
  SuperMarketsApi(this._client, this._firestore);

  final Client _client;
  final FirebaseFirestore _firestore;

  Future<List<Product>> getSuperMarketProducts({required String supermarketName, required String category, required int pageNumber}) async {
    final QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await _firestore.collection(supermarketName).doc('categories').collection(category).doc('pages').collection('page_$pageNumber').get();

    final List<Product> products = <Product>[];

    for (final DocumentSnapshot<Map<String, dynamic>> docSnapshot in querySnapshot.docs) {
      final Product product = Product.fromJson(docSnapshot.data()!);
      products.add(product);
    }
    return products;
  }

  Future<void> generateProducts() async {
    int pgCt;
    for (int indexSupermakets = 0; indexSupermakets < marketsNames.length; indexSupermakets++) {
      for (int index = 0; index < supermarketCategories.length; index++) {
        // print('\n\n\n\n\n\n------- ${auchan['legume']}\n\n\n\n');
        final Response response = await _client.get(
          Uri.parse(auchan[supermarketCategories[index]]!),
        );

        final Document document = parse(response.body);

        final List<Element> links = document.querySelectorAll('div.product-non-food-card');

        final List<Map<String, dynamic>> linkMap = <Map<String, dynamic>>[];

        pgCt = 0;
        for (int i = 0; i < links.length; i++) {
          if (i % 40 == 0) {
            pgCt++;
          }
          final DocumentReference<Map<String, dynamic>> ref = _firestore
              .collection(marketsNames[indexSupermakets])
              .doc('categories')
              .collection(
                supermarketCategories[index],
              )
              .doc('pages')
              .collection('page_$pgCt')
              .doc();
          final Element link = links[i];
          final Element? foodInfo = link.querySelector('div.content-container');
          final Element? image = link.querySelector('div.image-container > img');
          Element? price;
          if (foodInfo?.querySelector('div.price-container > span.price.red') == null) {
            price = foodInfo?.querySelector('div.price-container > span.price');
          } else {
            price = foodInfo?.querySelector('div.price-container > span.price.red');
          }
          final String priceText = price?.text ?? '';
          final double priceD = double.tryParse(priceText.replaceAll(RegExp('[^0-9.]'), '')) ?? 0.0;
          // var oldPrice = foodInfo?.querySelector('div.price-container > span.old-price');
          final Element? title = foodInfo?.querySelector('div.title');

          linkMap.add(<String, dynamic>{
            'title': title?.text,
            'image': image?.attributes['src'],
            'price': priceD,
            //'oldPrice': oldPrice?.text,
          });

          final Product product =
              Product(productId: ref.id, name: title!.text, price: priceD, image: image!.attributes['src']!);
          await ref.set(product.toJson());
        }
      }
    }
  }
}