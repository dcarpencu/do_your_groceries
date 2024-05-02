import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/grocery_lists_container.dart';
import 'package:do_you_groceries/src/containers/home_page_container.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/products/create_list_page.dart';
import 'package:do_you_groceries/src/presentation/products/user_products_page.dart';
import 'package:do_you_groceries/src/presentation/supermarkets/markets_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    // print('\n\n\n\n\n ------ IM IN STARTUP ------ \n\n\n');

    // RUN ONLY ONCE!

    //StoreProvider.of<AppState>(context, listen: false).dispatch(const GenerateProducts());

    StoreProvider.of<AppState>(context, listen: false).dispatch(const GetGroceryLists.start());
  }

  @override
  Widget build(BuildContext context) {
    return HomePageContainer(
      builder: (BuildContext context, AppState state) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(const Logout.start());
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
                return  const LinearProgressIndicator();
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
                        SizedBox(
                          height: 240,
                          child: ListView.separated(
                            itemCount: groceryLists.length,
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            separatorBuilder: (BuildContext context, int index) => const SizedBox(
                              width: 16,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 210,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 120,
                                      height: 120,
                                      child: SvgPicture.asset(
                                        'assets/groceryListIcons/${groceryLists.elementAt(index).selectedIcon}.svg',
                                      ),
                                    ),
                                    Text(
                                      groceryLists.elementAt(index).title,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      groceryLists.elementAt(index).description,
                                      style: const TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 45,
                                      width: 130,
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(colors: <Color>[Colors.green, Colors.teal]),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                        ),
                                        onPressed: () {
                                          StoreProvider.of<AppState>(context)
                                              .dispatch(SetSelectedList(groceryLists.elementAt(index).groceryListId));
                                          Navigator.push(
                                            context,
                                            // ignore: always_specify_types
                                            MaterialPageRoute<Widget>(
                                              builder: (BuildContext context) => const UserProductsPage(),
                                            ),
                                          );
                                        },
                                        child: const Center(
                                          child: Text(
                                            'View',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      else
                        const Center(child: Text('No lists.')),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                );
              },
            ); },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                // ignore: always_specify_types
                MaterialPageRoute<Widget>(builder: (BuildContext context) => const CreateListPage()),
              );
              //Navigator.pushNamed(context, '/createList');
            },
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
                    tooltip: 'Search',
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      Navigator.push(
                        context,
                        // ignore: always_specify_types
                        MaterialPageRoute<Widget>(builder: (BuildContext context) => const MarketsPage()),
                      );
                    },
                  ),
                  IconButton(
                    tooltip: 'Favorite',
                    icon: const Icon(Icons.favorite),
                    onPressed: () {},
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
