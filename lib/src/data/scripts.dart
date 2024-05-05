import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_you_groceries/src/data/market_links.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' show parse;
import 'package:http/http.dart';

late Client _client;
late FirebaseFirestore _firestore;
late Response response;
late Document document;
late List<Element> links;

Future<void> generateProducts() async {
  int pgCt;
  for (int indexSupermarkets = 0; indexSupermarkets < marketsNames.length; indexSupermarkets++) {
    for (int index = 0; index < supermarketCategories.length; index++) {
      final String currentSupermarketName = marketsNames[indexSupermarkets];
      final Map<String, String>? currentSupermarketData = allSupermarkets[currentSupermarketName];
      response = await _client.get(Uri.parse(currentSupermarketData![supermarketCategories[index]]!));
      document = parse(response.body);
      links = document.querySelectorAll('div.product-non-food-card');

      pgCt = 0;
      for (int i = 0; i < links.length; i++) {
        if (i % 40 == 0) {
          pgCt++;
        }
        final DocumentReference<Map<String, dynamic>> ref = _firestore
            .collection(marketsNames[indexSupermarkets])
            .doc('categories')
            .collection(supermarketCategories[index])
            .doc('pages')
            .collection('page_$pgCt')
            .doc();
        final Element link = links[i];
        final Element? foodInfo = link.querySelector('div.content-container');
        print('\n\n -- FOOD INFO: $foodInfo \n\n');
        final Element? image = link.querySelector('div.image-container > img');
        Element? price;
        if (foodInfo?.querySelector('div.price-container > span.price.red') == null) {
          price = foodInfo?.querySelector('div.price-container > span.price');
        } else {
          price = foodInfo?.querySelector('div.price-container > span.price.red');
        }
        final String priceText = price?.text ?? '';
        final double priceD = double.tryParse(priceText.replaceAll(RegExp('[^0-9.]'), '')) ?? 0.0;

        final Element? title = foodInfo?.querySelector('div.title');

        final Product product =
            Product(productId: ref.id, name: title!.text, price: priceD, image: image!.attributes['src']!, page: pgCt);

        print(product);
        await ref.set(product.toJson());
      }
    }
  }
}

Future<void> main() async {
  final FirebaseApp app = await Firebase.initializeApp();
  _firestore = FirebaseFirestore.instanceFor(app: app);
  _client = Client();
  await generateProducts();
  _client.close();
}
