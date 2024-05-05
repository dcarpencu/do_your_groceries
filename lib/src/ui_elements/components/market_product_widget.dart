import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/components/image_shimmer_widget.dart';
import 'package:flutter/material.dart';

class MarketProductWidget extends StatelessWidget {
  const MarketProductWidget({required this.product, super.key});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.blue,
        gradient: const LinearGradient(
          colors: <Color>[
            Colors.orangeAccent,
            Colors.deepOrangeAccent,
          ],
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          // print('Pressed button!');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: ImageShimmer(
                  url: product.image,
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            Align(
              child: Text(
                product.name,
                style: const TextStyle(fontSize: 12, color: Colors.black),
              ),
            ),
            Align(
              child: Text(
                '${product.price} RON',
                style: const TextStyle(color: Colors.black45, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
