import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/data/auth_api.dart';
import 'package:do_you_groceries/src/data/products_api.dart';
import 'package:do_you_groceries/src/data/supermarkets_api.dart';
import 'package:do_you_groceries/src/epics/app_epic.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/home.dart';
import 'package:do_you_groceries/src/presentation/login/login_page.dart';
import 'package:do_you_groceries/src/presentation/login/sign_up_page.dart';
import 'package:do_you_groceries/src/presentation/products/create_list_page.dart';
import 'package:do_you_groceries/src/presentation/products/create_product_page.dart';
import 'package:do_you_groceries/src/presentation/supermarkets/markets_page.dart';
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
  final FirebaseFirestore firestore = FirebaseFirestore.instanceFor(app: app);

  final Client client = Client();
  final SuperMarketsApi superMarketsApi = SuperMarketsApi(client, firestore);
  final ProductsApi productApi = ProductsApi(firestore);

  final AuthApi authApi = AuthApi(auth, firestore);
  final AppEpic epic = AppEpic(authApi, superMarketsApi, productApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.getEpics()).call,
    ],
  )..dispatch(const GetCurrentUser());

  runApp(MovieApp(store: store));
}

class MovieApp extends StatelessWidget {
  const MovieApp({required this.store, super.key});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const Home(),
          '/signUp': (BuildContext context) => const SignupPage(),
          '/login': (BuildContext context) => const LoginPage(),
          //'/productsSearch': (BuildContext context) => const SearchProductsPage(),
          '/markets': (BuildContext context) => const MarketsPage(),
          '/createList': (BuildContext context) => const CreateListPage(),
          '/createProductPage': (BuildContext context) => const CreateProductPage(),
        },
      ),
    );
  }
}
