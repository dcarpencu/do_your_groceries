import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/requests_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/components/sliver_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  late Store<AppState> store;
  bool isAccepted = false;

  @override
  void initState() {
    store = StoreProvider.of<AppState>(context, listen: false);
    store.dispatch(ListenForRequestsStart(isNotifications: store.state.isNotifications));
    super.initState();
  }

  @override
  void dispose() {
    if (isAccepted) {
      store.dispatch(const GetGroceryListsStart());
    }

    store
      ..dispatch(const SetNotificationOff())
      ..dispatch(ListenForRequestsDone(isNotifications: store.state.isNotifications))
      ..dispatch(const ClearRequests());
    super.dispose();
  }

  void _confirmAcceptRequest(AddRequest request) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Accept Request'),
          content: Text('Do you want to accept the request from ${request.senderName}?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                store.dispatch(
                  AcceptRequestStart(
                    groceryListId: request.groceryListId,
                    requestToRemove: request,
                  ),
                );
                isAccepted = true;
                Navigator.of(context).pop();
              },
              child: const Text('Accept'),
            ),
          ],
        );
      },
    );
  }

  void _confirmRejectRequest(AddRequest request) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Reject Request'),
          content: Text('Do you want to reject the request from ${request.senderName}?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                store
                  ..dispatch(RemoveRequestSimple(request: request))
                  ..dispatch(RemoveRequestStart(requestToRemove: request));
                Navigator.of(context).pop();
              },
              child: const Text('Reject'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RequestsContainer(
        builder: (BuildContext context, List<AddRequest> requests) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverPersistentHeader(
                delegate: SliverAppBarProducts(
                  'notifications', // Assume this is the icon for notifications
                  'Notifications',
                ),
                pinned: true,
              ),
              if (requests.isNotEmpty)
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: requests.length,
                    (BuildContext context, int index) {
                      final AddRequest request = requests.elementAt(index);
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: ListTile(
                            leading: const Icon(
                              Icons.notifications,
                              size: 40,
                              color: Colors.lightBlue,
                            ),
                            title: Text(
                              request.senderName,
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Text(
                              request.listName,
                              style: Theme.of(context).textTheme.bodyLarge,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                IconButton(
                                  icon: const Icon(Icons.check_circle, color: Colors.green),
                                  onPressed: () => _confirmAcceptRequest(request),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.cancel, color: Colors.red),
                                  onPressed: () => _confirmRejectRequest(request),
                                ),
                              ],
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
                      return const Center(child: Text('No notifications yet.'));
                    },
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
