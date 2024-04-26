import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/components/image_shimmer_widget.dart';
import 'package:flutter/material.dart';

class ModelItem extends StatelessWidget {

  const ModelItem({required this.model, super.key});
  final Product model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(24),
        elevation: 4,
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 100,
          width: 120,
          child: Row(
            children: [
              ImageShimmer(
                url: model.image,
                height: 100,
                width: 130,
              ),
              const SizedBox(width: 12,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      model.name,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.monetization_on,
                          size: 12,
                        ),
                        const SizedBox(width: 8,),
                        Text(
                          '${model.price} RON',
                          style: const TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    // const Row(
                    //   children: [
                    //     Icon(
                    //       Icons.album,
                    //       size: 12,
                    //     ),
                    //     SizedBox(width: 4,),
                    //     Text(
                    //       'ceva',
                    //       style: TextStyle(fontSize: 12),
                    //     )
                    //   ],
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}