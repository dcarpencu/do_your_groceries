import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.green,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              children: <Widget>[
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
                const Spacer(),
                IconButton(
                  tooltip: 'Search',
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    Navigator.pushNamed(context, '/productsSearch');
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
