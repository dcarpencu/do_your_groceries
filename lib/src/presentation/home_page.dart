import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/home_page_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HomePageContainer(
      builder: (BuildContext context, AppState state) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(const Logout());
              },
              icon: const Icon(Icons.logout),),
            title: const Text('DoYourGroceries'),
            actions: const <Widget>[
            ],
          ),
          body: const Center(child: Text('App')),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            tooltip: 'Create',
            child: const Icon(Icons.add),
          ),
          bottomNavigationBar: const BottomAppBarWidget(
            fabLocation: FloatingActionButtonLocation.centerFloat,
          ),
        );
      },
    );
  }
}
