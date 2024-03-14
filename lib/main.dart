import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/data/auchan_api.dart';
import 'package:do_you_groceries/src/data/auth_api.dart';
import 'package:do_you_groceries/src/epics/app_epic.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/home.dart';
import 'package:do_you_groceries/src/presentation/login_page.dart';
import 'package:do_you_groceries/src/presentation/search.dart';
import 'package:do_you_groceries/src/presentation/sign_up_page.dart';
import 'package:do_you_groceries/src/reducer/reducer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';

import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp();
  final FirebaseAuth auth = FirebaseAuth.instanceFor(app: app);

  final Client client = Client();
  final AuchanApi _auchanApi = AuchanApi(client);


  final AuthApi _authApi = AuthApi(auth);
  final AppEpic epic = AppEpic(_authApi, _auchanApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.getEpics()),
    ],
  )..dispatch(const GetCurrentUser());

  runApp(MovieApp(store: store));
  //runApp(const BottomAppBarDemo());
}

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const Home(),
          '/signUp': (BuildContext context) => const SignupPage(),
          '/login': (BuildContext context) => const LoginPage(),
          '/productsSearch': (BuildContext context) => const SearchProducts(),
        },
      ),
    );
  }
}
