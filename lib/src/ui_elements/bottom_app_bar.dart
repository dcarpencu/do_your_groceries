import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatelessWidget {

  const BottomAppBarWidget({
    super.key, required this.route,});
  final dynamic route;

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
                      MaterialPageRoute(builder: (BuildContext context) => route),
                    );
                  },
                ),
                IconButton(
                  tooltip: 'Favorite',
                  icon: const Icon(Icons.favorite),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
