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

    final List<Product> products = <Product>[];

    for (final DocumentSnapshot<Map<String, dynamic>> docSnapshot in querySnapshot.docs) {
      final Product product = Product.fromJson(docSnapshot.data()!);
      products.add(product);
    }
    //print('\n\n\n\n\n\n\n\n $products \n\n\n\n\n\n\n');
    return products;
  }

  Future<void> generateProducts() async {
    int pgCt;
    for (int indexSupermakets = 0; indexSupermakets < 1; indexSupermakets++) {
      for (int index = 0; index < supermarketCategories.length; index++) {
        // print('\n\n\n\n\n\n------- ${auchan['legume']}\n\n\n\n');
        final String currentSupermarketName = marketsNames[indexSupermakets];
        final Map<String, String>? currentSupermarketData = allSupermarkets[currentSupermarketName];
        //print('\n\n\n\n DE BUGGING HERE: ${currentSupermarketData![supermarketCategories[index]]!}');
        final Response response = await _client.get(
          Uri.parse(currentSupermarketData![supermarketCategories[index]]!),
        );

        final Document document = parse(response.body);
        final List<Element> links = document.querySelectorAll('div.product-non-food-card');

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

          //print('\n\n -- FOOD INFO: $link \n\n');

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


          final String filteredProductName = printFilteredProductName(title!.text);


            // // Your input string
            // final String inputString = title!.text;
            //
            // // Iterate over each string in the whitelist
            // for (final String item in whitelist) {
            //   // Split the item into individual words
            //   final List<String> words = item.toLowerCase().split(' ');
            //
            //   // Check if all words in the item are present in the input string
            //   final bool allWordsPresent = words.every((String word) => inputString.toLowerCase().contains(word));
            //
            //   // If all words are present, print the item
            //   if (allWordsPresent) {
            //     print(item);
            //     // If you want to print only the first match and exit the loop, uncomment the next line
            //     // break;
            //   }
            // }

          // await refTags.set('');


          final Product product = Product(
            productId: ref.id,
            name: title!.text,
            price: priceD,
            image: image!.attributes['src']!,
            page: pgCt,
            tag: filteredProductName,
            category: supermarketCategories[index],
          );

          await _firestore.doc('tags/${supermarketCategories[index]}/$filteredProductName/${ref.id}').set(product.toJson());
          //refTags.set(product.toJson());
          await ref.set(product.toJson());
        }
      }
    }
  }

  // void main() {
  //   String inputString = "This is a test string with some words like 123, g, 1.5kg, and others.";
  //
  //
  //
  //
  //   print(filteredWords);
  // }

  List<String> extractWords(String input) {
    RegExp exp = RegExp(r'[a-zA-Z]+(?:\.[a-zA-Z]+)?');
    Iterable<Match> matches = exp.allMatches(input);
    List<String> words = [];
    for (Match match in matches) {
      words.add(match.group(0)!);
    }
    return words;
  }

  bool isNumber(String word) {
    RegExp exp = RegExp(r'^\d*\.?\d*$');
    return exp.hasMatch(word);
  }

  String printFilteredProductName(String name) {
    final List<String> words = extractWords(name);

    final List<String> filteredWords = words.where((word) {
      final String lowerWord = word.toLowerCase();
      if (!blacklist.map((String entry) => entry.toLowerCase()).contains(lowerWord) &&
          !isNumber(word) &&
          !word.endsWith('.')) { // Check if word does not end with '.'
        return true;
      }
      return false;
    }).toList();

    final String result = filteredWords.join(' ').toLowerCase(); // Concatenate words with spaces and convert to lowercase

    print('\n FILTERED WORDS FOR $name: $result \n');

    return result; // Return the concatenated string
  }
}
