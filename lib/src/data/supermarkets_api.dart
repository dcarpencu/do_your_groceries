import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:html/dom.dart'; // Contains DOM related classes for extracting data from elements
import 'package:html/parser.dart'; // Contains HTML parsers to generate a Document object
import 'package:http/http.dart'; // Contains a client for making API calls

class SuperMarketsApi {
  SuperMarketsApi(this._client, this._firestore);

  final Client _client;
  final FirebaseFirestore _firestore;

  Future<List<Product>> getProducts() async {
    final Response response = await _client.get(
      Uri.parse('https://tazz.ro/timisoara/auchan-hypermarket-timisoara/legume-si-fructe/9063/2355527/dpt'),
    );

    final Document document = parse(response.body);
    //print(document.outerHtml);

    final List<Element> links = document.querySelectorAll('div.product-non-food-card');

    final List<Map<String, dynamic>> linkMap = <Map<String, dynamic>>[];

    for (int i = 0; i < links.length; i++) {
      final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('auchanProducts').doc();
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

    final List<Product> list = <Product>[];

    for (int i = 0; i < linkMap.length; i++) {
      list.add(Product.fromJson(linkMap[i]));
    }

    return list;
  }

  Future<List<Product>> getSuperMarketProducts({required String supermarketName}) async {
    final QuerySnapshot<Map<String, dynamic>> querySnapshot =
    await _firestore.collection(supermarketName).get();

    final List<Product> products = <Product>[];

    for (final DocumentSnapshot<Map<String, dynamic>> docSnapshot
    in querySnapshot.docs) {
      final Product product = Product.fromJson(docSnapshot.data()!);
      products.add(product);
    }
    return products;
  }

  Future<void> generateProducts() async {
    final Response response = await _client.get(
      Uri.parse('https://tazz.ro/timisoara/auchan-hypermarket-timisoara/legume-si-fructe/9063/2355527/dpt'),
    );

    final Document document = parse(response.body);
    //print(document.outerHtml);

    final List<Element> links = document.querySelectorAll('div.product-non-food-card');

    final List<Map<String, dynamic>> linkMap = <Map<String, dynamic>>[];

    for (int i = 0; i < links.length; i++) {
      final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('auchan').doc();
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
