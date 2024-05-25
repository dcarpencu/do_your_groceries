import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/grocery_lists_container.dart';
import 'package:do_you_groceries/src/containers/home_page_container.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/products/create_list_page.dart';
import 'package:do_you_groceries/src/ui_elements/components/home_page_components/lists_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
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
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(const LogoutStart());
                context.go('/login');
              },
              icon: const Icon(Icons.logout),
            ),
            title: const Text(
              'DoYourGroceries',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            actions: const <Widget>[],
          ),
          body: PendingContainer(
            builder: (BuildContext context, Set<String> pending) {
              if (pending.contains(GetGroceryLists.pendingKey)) {
                return const LinearProgressIndicator();
              }
              return GroceryListsContainer(
                builder: (BuildContext context, Set<GroceryList> groceryLists) {
                  final double width = MediaQuery.of(context).size.width * 0.9;
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
                        Card(
                          elevation: 5,
                          shadowColor: Colors.black,
                          color: Colors.greenAccent,
                          child: SizedBox(
                            width: width,
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundColor: Colors.green[500],
                                    radius: 50,
                                    child: const CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://www.pushengage.com/wp-content/uploads/2022/10/How-to-Add-a-Push-Notification-Icon.png"),
                                      radius: 100,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Notification center',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.green[900],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => context.push('/createList'),
            tooltip: 'Create',
            child: const Icon(Icons.playlist_add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
          bottomNavigationBar: BottomAppBar(
            height: 60,
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
                  IconButton(
                    tooltip: 'Favorite',
                    icon: const Icon(Icons.favorite),
                    onPressed: () {
                      print('Favorites Icon pressed!');
                    },
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

  Route<dynamic> _createRoute() {
    return PageRouteBuilder<dynamic>(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => const CreateListPage(),
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        const Offset begin = Offset(0, 1);
        const Offset end = Offset.zero;
        const Cubic curve = Curves.ease;

        final Animatable<Offset> tween = Tween<Offset>(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
