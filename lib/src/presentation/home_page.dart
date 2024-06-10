import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/grocery_lists_container.dart';
import 'package:do_you_groceries/src/containers/home_page_container.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/navigation/transitions.dart';
import 'package:do_you_groceries/src/presentation/products/create_list_page.dart';
import 'package:do_you_groceries/src/presentation/user/notifications_page.dart';
import 'package:do_you_groceries/src/presentation/user/user_profile_page.dart';
import 'package:do_you_groceries/src/ui_elements/components/home_page_components/lists_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Store<AppState> _store;

  @override
  void initState() {
    super.initState();

    _store = StoreProvider.of<AppState>(context, listen: false);
    _store.dispatch(const GetGroceryListsStart());
  }

  @override
  Widget build(BuildContext context) {
    return HomePageContainer(
      builder: (BuildContext context, AppState state) {
        final double width = MediaQuery.of(context).size.width * 0.9;
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'DoYourGroceries',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            actions: const <Widget>[],
          ),
          body: Column(
            children: <Widget>[
              PendingContainer(
                builder: (BuildContext context, Set<String> pending) {
                  if (pending.contains(GetGroceryLists.pendingKey)) {
                    return const LinearProgressIndicator();
                  }
                  return GroceryListsContainer(
                    builder: (BuildContext context, Set<GroceryList> groceryLists) {
                      return SafeArea(
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 16,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  'Your lists. Here.',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            if (groceryLists.isNotEmpty)
                              ListsCarousel(groceryLists: groceryLists, store: _store,)
                            else
                              const Center(child: Text('No lists.')),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.of(context).push(createRoute(const CreateListPage())),
            tooltip: 'Create',
            child: const Icon(Icons.playlist_add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
          bottomNavigationBar: BottomAppBar(
            height: 60,
            shape: const CircularNotchedRectangle(),
            color: Colors.lightBlue,
            child: IconTheme(
              data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
              child: Row(
                children: <Widget>[
                  IconButton(
                    tooltip: 'Notifications',
                    icon: const Icon(Icons.notifications),
                    onPressed: () {
                      _store.dispatch(const SetNotificationOn());
                      Navigator.of(context).push(createRoute(const NotificationsPage()));
                    },
                  ),
                  IconButton(
                    tooltip: 'Open navigation menu',
                    icon: const Icon(Icons.person),
                    onPressed: () => Navigator.of(context).push(createRoute(const UserProfilePage())),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
