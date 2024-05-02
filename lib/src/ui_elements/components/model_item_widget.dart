import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/components/image_shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class ModelItem extends StatelessWidget {
  const ModelItem({required this.model, required this.store, required this.marketName, required this.category, super.key});
  final Product model;
  final Store<AppState> store;
  final String marketName;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Material(
        borderRadius: BorderRadius.circular(24),
        elevation: 4,
        child: SizedBox(
          //padding: const EdgeInsets.all(8),
          height: 100,
          width: 120,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
              ),
            onPressed: () {
                store.dispatch(AddProductToGroceryListStart(model, store.state.selectedGroceryList!, model.page,marketName: marketName, category: category,)); },
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
                        children: <Widget>[
                          const Icon(
                            Icons.monetization_on,
                            size: 12,
                          ),
                          const SizedBox(width: 8,),
                          Text(
                            '${model.price} RON',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}