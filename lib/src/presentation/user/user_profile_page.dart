import 'package:do_you_groceries/src/containers/user_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return UserContainer(builder: (BuildContext context, AppUser? user) {
      return Scaffold(
        appBar: AppBar(title: Text('Hello ${user?.username}!'),),
        body: Column(
          children: <Widget>[
            Text('User details'),
            Text('Welcome'),
          ],
        ),
      );
    },);
  }
}
