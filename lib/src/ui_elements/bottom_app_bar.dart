import 'package:do_you_groceries/src/presentation/products/create_product_page.dart';
import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    required this.route,
    super.key,
  });
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return BottomAppBar(
          height: 60,
          shape: const CircularNotchedRectangle(),
          color: Colors.green,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: 'Search',
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    Navigator.push(
                      context,
                      // ignore: always_specify_types
                      MaterialPageRoute<Widget>(builder: (BuildContext context) => route),
                    );
                  },
                ),
                IconButton(
                  tooltip: 'Favorite',
                  icon: const Icon(Icons.create),
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute<Widget>(builder: (BuildContext context) => const CreateProductPage()),
                    // );
                    Navigator.of(context).push(_createRoute());
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Route<dynamic> _createRoute() {
    return PageRouteBuilder<dynamic>(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => const CreateProductPage(),
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        const Offset begin = Offset(0.0, 1.0);
        const Offset end = Offset.zero;
        const Cubic curve = Curves.ease;

        Animatable<Offset> tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

}
