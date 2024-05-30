import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/requests_container.dart';
import 'package:do_you_groceries/src/containers/user_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _AddPeoplePageState();
}

class _AddPeoplePageState extends State<NotificationsPage> {
  late Store<AppState> store;

  @override
  void initState() {
    store = StoreProvider.of<AppState>(context, listen: false);
    store.dispatch(ListenForRequestsStart(isNotifications: store.state.isNotifications));
    super.initState();
  }

  @override
  void dispose() {
    store..dispatch(const SetNotificationOff())
    ..dispatch(ListenForRequestsDone(isNotifications: store.state.isNotifications));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifications'),),
      body: RequestsContainer(
        builder: (BuildContext context, List<AddRequest> requests) {
          return ListView.builder(
            itemCount: requests.length,
            itemBuilder: (BuildContext context, int index) {
              final AddRequest request = requests.elementAt(index);
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Material(
                  borderRadius: BorderRadius.circular(24),
                  elevation: 4,
                  child: SizedBox(
                    height: 100,
                    width: 120,
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              request.senderName,
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
                                request.listName,
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                request.senderEmail,
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    iconSize: 36,
                                    icon: const Icon(Icons.check_circle),
                                    onPressed: () async {
                                      store.dispatch(AcceptRequestStart(groceryListId: request.groceryListId, requestToRemove: request));
                                      await store.dispatch(RemoveRequestStart(requestToRemove: request));
                                      store.dispatch(RemoveRequestSimple(request: request));
                                    },
                                  ),
                                  IconButton(
                                    iconSize: 36,
                                    icon: const Icon(Icons.cancel),
                                    onPressed: () {
                                      store..dispatch(RemoveRequestSimple(request: request))
                                      ..dispatch(RemoveRequestStart(requestToRemove: request));
                                    },
                                  ),
                                  const SizedBox(
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
              );
            },
          );
        },
      ),
    );
  }
}
