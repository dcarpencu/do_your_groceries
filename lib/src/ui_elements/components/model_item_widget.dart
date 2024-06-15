import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:redux/redux.dart';

class ModelItem extends StatelessWidget {
  const ModelItem({
    required this.model,
    required this.store,
    required this.marketName,
    required this.category,
    super.key,
  });

  final Product model;
  final Store<AppState> store;
  final String marketName;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 1,
        child: SizedBox(
          height: 100,
          width: 120,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shadowColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onPressed: () {
              store.dispatch(
                AddProductToGroceryListStart(
                  model,
                  store.state.selectedGroceryList!.groceryListId,
                ),
              );
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 100,
                  width: 130,
                  child: FadeInImage(
                    image: NetworkImage(model.image),
                    placeholder: const AssetImage('assets/placeholders/cooking.png'),
                    imageErrorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                      return SvgPicture.asset('assets/categoryIcons/${model.category}.svg');
                    },
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Align(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            model.name,
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            const Icon(
                              Icons.monetization_on,
                              size: 12,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '${model.price} RON',
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
