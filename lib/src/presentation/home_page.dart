import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/grocery_lists_container.dart';
import 'package:do_you_groceries/src/containers/home_page_container.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/navigation/transitions.dart';
import 'package:do_you_groceries/src/presentation/products/create_list_page.dart';
import 'package:do_you_groceries/src/presentation/user/notifications_page.dart';
import 'package:do_you_groceries/src/presentation/user/user_profile_page.dart';
import 'package:do_you_groceries/src/ui_elements/components/background_wave_clipper.dart';
import 'package:do_you_groceries/src/ui_elements/components/home_page_components/lists_carousel.dart';
import 'package:do_you_groceries/src/ui_elements/components/shimmer/shimmer_screen.dart';
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
        return Scaffold(
          body: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  const BackgroundWave(height: 280,),
                  const Positioned(
                    top: 100,
                    left: 20,
                    child: Text(
                      'DoYourGroceries',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Poppins',
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 88,
                    left: 256,
                    child: SizedBox(height: 124, child: Image.asset('assets/Backgrounds/grocery-bag.png')),
                  ),
                ],
              ),
              PendingContainer(
                builder: (BuildContext context, Set<String> pending) {
                  if (pending.contains(GetGroceryLists.pendingKey)) {
                    return const Center(
                        child: ListsCarouselShimmer(),
                      // child: LoadingAnimationWidget.horizontalRotatingDots(
                      //   color: Colors.black,
                      //   size: 100,
                      // ),
                    );
                  }
                  return GroceryListsContainer(
                    builder: (BuildContext context, Set<GroceryList> groceryLists) {
                      return Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'Poppins',
                                    height: 1.2,
                                    color: Colors.black,
                                    // You can adjust the color as needed
                                    fontWeight: FontWeight.normal, // Salut is regular
                                  ),
                                  children: <InlineSpan>[
                                    const TextSpan(
                                      text: 'Salut, ',
                                    ),
                                    TextSpan(
                                      text: _store.state.user?.username ?? '', // Username is bolded
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const TextSpan(
                                      text: '!', // exclamation mark remains regular
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          if (groceryLists.isNotEmpty)
                            ListsCarousel(
                              groceryLists: groceryLists,
                              store: _store,
                            )
                          else
                            const Center(child: Text('No lists.')),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
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
