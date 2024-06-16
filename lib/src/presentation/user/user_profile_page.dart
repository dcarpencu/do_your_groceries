import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/user_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/components/background_wave_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

          return Column(
            children: <Widget>[
              BackgroundWave(
                pageName: 'Detalii cont',
                iconWidget: SvgPicture.asset(
                  'assets/groceryListIcons/useraccount.svg',
                  height: 120,
                  width: 120,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('assets/placeholders/milo.png'),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                user.username,
                                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                user.email,
                                style: const TextStyle(fontSize: 18, height: 1.5),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      const Divider(),
                      const SizedBox(height: 16),
                      const Text(
                        'Informații aplicație',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        children: <Widget>[
                          Icon(Icons.person, color: Colors.blue),
                          SizedBox(width: 8),
                          Text(
                            'Nume dezvoltator: David-Ioan Carpencu',
                            style: TextStyle(fontSize: 16, height: 1.5),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: <Widget>[
                          Icon(Icons.phone, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            'Phone: +4074528118',
                            style: TextStyle(fontSize: 16, height: 1.5),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: <Widget>[
                          Icon(Icons.location_on, color: Colors.red),
                          SizedBox(width: 8),
                          Text(
                            'Location: Timișoara, România',
                            style: TextStyle(fontSize: 16, height: 1.5),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Preferințe',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        children: <Widget>[
                          Icon(Icons.notifications, color: Colors.orange),
                          SizedBox(width: 8),
                          Text(
                            'Notificări: Permise',
                            style: TextStyle(fontSize: 16, height: 1.5),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: <Widget>[
                          Icon(Icons.language, color: Colors.purple),
                          SizedBox(width: 8),
                          Text(
                            'Limba aleasă: Română',
                            style: TextStyle(fontSize: 16, height: 1.5),
                          ),
                        ],
                      ),
                      const SizedBox(height: 56),
                      Center(
                        child: ElevatedButton.icon(
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
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
