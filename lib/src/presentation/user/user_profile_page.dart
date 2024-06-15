import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/user_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/components/background_wave_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  late Store<AppState> store;

  @override
  void initState() {
    super.initState();
    store = StoreProvider.of<AppState>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserContainer(
        builder: (BuildContext context, AppUser? user) {
          if (user == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    const BackgroundWave(
                      height: 280,
                    ),
                    Positioned(
                      top: 145,
                      left: 40,
                      child: Text(
                        'Hello, ${user.username}!',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: 'Poppins',
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'User Details',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Username: ${user.username}',
                                style: const TextStyle(fontSize: 18, height: 1.5),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Email: ${user.email}',
                                style: const TextStyle(fontSize: 18, height: 1.5),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: () async {
                          StoreProvider.of<AppState>(context).dispatch(const LogoutStart());
                          context.go('/login');
                        },
                        icon: const Icon(Icons.logout, color: Colors.white),
                        label: const Text(
                          'Logout',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
