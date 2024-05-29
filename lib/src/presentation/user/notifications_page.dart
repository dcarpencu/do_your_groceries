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

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Notifications')),
        body: UserContainer(
          builder: (BuildContext context, AppUser? user) {
            final Set<AddRequest> requests = user!.requests;
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
                        },
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
                                    request.senderEmail,
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
        ),
    );
  }
}
