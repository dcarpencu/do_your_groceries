import 'package:do_you_groceries/src/navigation/transitions.dart';
import 'package:do_you_groceries/src/presentation/products/create_product_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    required this.route,
    super.key,
  });
  final String route;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return BottomAppBar(
          height: 60,
          shape: const CircularNotchedRectangle(),
          color: Colors.lightBlue,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.person_add),
                  onPressed: () {
                    context.pushNamed('addPeople');
                  },
                ),
                IconButton(
                  tooltip: 'Search',
                  icon: const Icon(Icons.search),
                  onPressed: () {
                      context.pushNamed(route);
                  },
                ),
                IconButton(
                  tooltip: 'Generate',
                  icon: const Icon(Icons.generating_tokens),
                  onPressed: () {
                    context.pushNamed('createRecipes');
                  },
                ),
                IconButton(
                  tooltip: 'Favorite',
                  icon: const Icon(Icons.create),
                  onPressed: () => Navigator.of(context).push(createRoute(const CreateProductPage())),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
