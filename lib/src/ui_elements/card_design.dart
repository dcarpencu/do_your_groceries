import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.notification_important),
              title: Text('Home - Notifications', style: TextStyle(fontSize: 24),),
              subtitle: Column(
                children: <Widget>[
                  SizedBox(height: 16),
                  Text('You currently have N products about to expire! Lets looks for a recipe and save them'),
                  SizedBox(height: 16),
                  Text('Lower price on your favorite cheese/ milk/ whatever vrea sufletelul tau!'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('See more'),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Ignore'),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
