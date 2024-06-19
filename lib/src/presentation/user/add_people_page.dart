import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/db_users_container.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/components/background_wave_clipper.dart';
import 'package:do_you_groceries/src/ui_elements/components/sliver_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:redux/redux.dart';

class AddPeoplePage extends StatefulWidget {
  const AddPeoplePage({required this.groceryList, super.key});

  final GroceryList groceryList;

  @override
  State<AddPeoplePage> createState() => _AddPeoplePageState();
}

class _AddPeoplePageState extends State<AddPeoplePage> {
  late Store<AppState> store;

  @override
  void initState() {
    store = StoreProvider.of<AppState>(context, listen: false);
    store.dispatch(GetUsersStart(groceryList: widget.groceryList));
    super.initState();
  }

  void _confirmAddFriend(AppUser user) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Adaugă un prieten'),
          content: Text('Îți dorești să îl adaugi pe ${user.username} la lista ta?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Renunță'),
            ),
            TextButton(
              onPressed: () {
                store.dispatch(
                  SendRequestStart(
                    receiverId: user.uid,
                    groceryListId: widget.groceryList.groceryListId,
                    senderUsername: store.state.user!.username,
                    groceryListName: widget.groceryList.title,
                  ),
                );
                Navigator.of(context).pop();
              },
              child: const Text('Adaugă'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PendingContainer(
        builder: (BuildContext context, Set<String> pending) {
          if ((pending.contains(GetUsers.pendingKey)) || (pending.contains(SendRequest.pendingKey))) {
            return Column(
              children: <Widget>[
                BackgroundWave(
                  pageName: 'Adaugă în\n${widget.groceryList.title}',
                  iconWidget: SvgPicture.asset(
                    'assets/groceryListIcons/${widget.groceryList.selectedIcon}.svg',
                    height: 100,
                    width: 100,
                  ),
                ),
                const Center(child: CircularProgressIndicator()),
              ],
            );
          }

          return DataBaseUsersContainer(
            builder: (BuildContext context, Set<AppUser> users) {
              return CustomScrollView(
                slivers: <Widget>[
                  SliverPersistentHeader(
                    delegate: SliverAppBarProducts(
                      widget.groceryList.selectedIcon,
                      'Adaugă în\n${widget.groceryList.title}',
                    ),
                    pinned: true,
                  ),
                  if (users.isNotEmpty)
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: users.length,
                        (BuildContext context, int index) {
                          final AppUser user = users.elementAt(index);
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/placeholders/buddy.png',
                                  width: 72,
                                  height: 72,
                                ),
                                title: Text(
                                  user.username,
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                subtitle: Text(
                                  user.email,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                trailing: IconButton(
                                  icon: const Icon(Icons.person_add),
                                  onPressed: () => _confirmAddFriend(user),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  else
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: 1,
                        (BuildContext context, int index) {
                          return const Center(child: Text('Nu există alți utilizatori!'));
                        },
                      ),
                    ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
