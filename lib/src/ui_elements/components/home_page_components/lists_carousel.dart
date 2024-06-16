import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/navigation/transitions.dart';
import 'package:do_you_groceries/src/presentation/products/edit_list_page.dart';
import 'package:do_you_groceries/src/presentation/user/add_people_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';

enum Options { delete, edit, invite }

class ListsCarousel extends StatefulWidget {
  const ListsCarousel({required this.groceryLists, required this.store, super.key});

  final Set<GroceryList> groceryLists;
  final Store<AppState> store;

  @override
  State<ListsCarousel> createState() => _ListsCarouselState();
}

class _ListsCarouselState extends State<ListsCarousel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.separated(
        itemCount: widget.groceryLists.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 16),
        itemBuilder: (BuildContext context, int index) {
          final GroceryList groceryList = widget.groceryLists.elementAt(index);

          return Container(
            width: 240,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: <Color>[Colors.lightBlue, Colors.lightBlueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/groceryListIcons/${groceryList.selectedIcon}.svg',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    groceryList.title,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Text(
                      groceryList.description,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const IconButton(onPressed: null, icon: Icon(Icons.more_vert, color: Colors.transparent)),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.green,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          widget.store.dispatch(SetSelectedList(groceryList));
                          context.pushNamed('groceryList');
                        },
                        child: const Text(
                          'Vezi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      PopupMenuButton<Options>(
                        icon: const Icon(Icons.more_vert, color: Colors.white),
                        onSelected: (Options item) {
                          if (item == Options.delete) {
                            widget.store
                              ..dispatch(RemoveGroceryListSimple(groceryList: groceryList))
                              ..dispatch(RemoveGroceryList(groceryList: groceryList));
                          } else if (item == Options.edit) {
                            Navigator.of(context).push(createRoute(EditListPage(groceryList: groceryList)));
                          } else if (item == Options.invite) {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => AddPeoplePage(groceryList: groceryList),
                              ),
                            );
                          }
                        },
                        itemBuilder: (BuildContext context) => <PopupMenuEntry<Options>>[
                          const PopupMenuItem<Options>(
                            value: Options.delete,
                            child: ListTile(
                              leading: Icon(Icons.delete_outline),
                              title: Text('Șterge'),
                            ),
                          ),
                          const PopupMenuItem<Options>(
                            value: Options.edit,
                            child: ListTile(
                              leading: Icon(Icons.edit),
                              title: Text('Modifică'),
                            ),
                          ),
                          const PopupMenuItem<Options>(
                            value: Options.invite,
                            child: ListTile(
                              leading: Icon(Icons.person_add),
                              title: Text('Invită'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
