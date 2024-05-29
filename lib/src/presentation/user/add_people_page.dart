import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/db_users_container.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class AddPeoplePage extends StatefulWidget {
  const AddPeoplePage({super.key});

  @override
  State<AddPeoplePage> createState() => _AddPeoplePageState();
}

class _AddPeoplePageState extends State<AddPeoplePage> {
  late Store<AppState> store;

  @override
  void initState() {
    store = StoreProvider.of<AppState>(context, listen: false);
    store.dispatch(const GetUsersStart());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add someone!')),
      body: PendingContainer(
        builder: (BuildContext context, Set<String> pending) {
          if (pending.contains(GetUsers.pendingKey)) {
            return const Center(child: CircularProgressIndicator());
          }
          return DataBaseUsersContainer(
            builder: (BuildContext context, Set<AppUser> users) {
              if (users.isEmpty) {
                return const Text('No match for your product.');
              }
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  final AppUser user = users.elementAt(index);
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Material(
                      borderRadius: BorderRadius.circular(24),
                      elevation: 4,
                      child: SizedBox(
                        height: 100,
                        width: 120,
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
                            store.dispatch(SendRequestStart(receiverId: user.uid, groceryListId: store.state.selectedGroceryList!));
                          },
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    user.username,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      user.email,
                                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                    const Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.monetization_on,
                                          size: 12,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
