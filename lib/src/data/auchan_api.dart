import 'package:do_you_groceries/src/models/index.dart';
import 'package:html/dom.dart'; // Contains DOM related classes for extracting data from elements
import 'package:html/parser.dart'; // Contains HTML parsers to generate a Document object
import 'package:http/http.dart'; // Contains a client for making API calls

class AuchanApi {

  AuchanApi(this._client);

  final Client _client;

  Future<List<Auchan>> getProducts() async {
    final Response response = await _client.get(
        Uri.parse('https://tazz.ro/timisoara/auchan-hypermarket-timisoara/legume-si-fructe/9063/2355527/dpt'),
    );

    final Document document = parse(response.body);
    //print(document.outerHtml);

    final List<Element> links = document.querySelectorAll('div.product-non-food-card');

    final List<Map<String, dynamic>> linkMap = <Map<String, dynamic>>[];

    for (int i = 0; i < links.length; i++) {
      final Element link = links[i];
      final Element? foodInfo = link.querySelector('div.content-container');
      final Element? image = link.querySelector('div.image-container > img');
      Element? price;
      if (foodInfo?.querySelector('div.price-container > span.price.red') == null) {
        price = foodInfo?.querySelector('div.price-container > span.price');
      } else {
        price = foodInfo?.querySelector('div.price-container > span.price.red');
      }
      final String priceText = price?.text ?? "";
      final double priceD = double.tryParse(priceText.replaceAll(RegExp(r'[^\d.]'), '')) ?? 0.0;
      // var oldPrice = foodInfo?.querySelector('div.price-container > span.old-price');
      final Element? title = foodInfo?.querySelector('div.title');

      linkMap.add(<String, dynamic>{
        'title': title?.text,
        'image': image?.attributes['src'],
        'price': priceD,
        //'oldPrice': oldPrice?.text,
      });
    }

    final List<Auchan> list = <Auchan>[];

    for(int i = 0; i < linkMap.length; i++) {
      list.add(Auchan.fromJson(linkMap[i]));
    }

    return list;
  }
}
