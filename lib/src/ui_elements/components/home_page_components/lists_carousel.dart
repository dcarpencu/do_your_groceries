import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';

class ListsCarousel extends StatelessWidget {
  const ListsCarousel({required this.groceryLists, required this.store, super.key});

  final Set<GroceryList> groceryLists;
  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 264,
      child: ListView.separated(
        itemCount: groceryLists.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 20, right: 20),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 16,
        ),
        itemBuilder: (BuildContext context, int index) {
          final GroceryList groceryList = groceryLists.elementAt(index);
          //final bool isDeleted = store.state.user!.groceryListIds.contains(groceryList.groceryListId);

          return Container(
            width: 210,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(16),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: SvgPicture.asset(
                      'assets/groceryListIcons/${groceryList.selectedIcon}.svg',
                    ),
                  ),
                  Text(
                    groceryList.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    groceryList.description,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
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
                        store.dispatch(SetSelectedList(groceryList.groceryListId, groceryList.title));
                        context.pushNamed('groceryList');
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
                  TextButton(
                      onPressed: () {
                        store..dispatch(RemoveGroceryListSimple(groceryList: groceryLists.elementAt(index)))
                        ..dispatch(RemoveGroceryList(groceryList: groceryLists.elementAt(index)));
                      },
                      child: const Text('Delete list')),
                  const SizedBox(
                    height: 10,
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
