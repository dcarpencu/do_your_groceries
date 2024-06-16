import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/data/ai_generated_api.dart';
import 'package:do_you_groceries/src/data/auth_api.dart';
import 'package:do_you_groceries/src/data/camera_api.dart';
import 'package:do_you_groceries/src/data/products_api.dart';
import 'package:do_you_groceries/src/data/supermarkets_api.dart';
import 'package:do_you_groceries/src/epics/app_epic.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/navigation/routes.dart';
import 'package:do_you_groceries/src/reducer/reducer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp();
  final FirebaseAuth auth = FirebaseAuth.instanceFor(app: app);
  final FirebaseFirestore firestore = FirebaseFirestore.instanceFor(app: app);

  final SuperMarketsApi superMarketsApi = SuperMarketsApi(firestore);
  final ProductsApi productApi = ProductsApi(firestore);

  final CameraApi cameraApi = CameraApi();

  final AiGeneratedApi aiGeneratedApi = AiGeneratedApi();

  final AuthApi authApi = AuthApi(auth, firestore);
  final AppEpic epic = AppEpic(authApi, superMarketsApi, productApi, cameraApi, aiGeneratedApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.getEpics()).call,
    ],
  )..dispatch(const GetCurrentUserStart());

  runApp(DoYourGroceriesApp(store: store));
}

class DoYourGroceriesApp extends StatefulWidget {
  const DoYourGroceriesApp({required this.store, super.key});

  final Store<AppState> store;

  @override
  State<DoYourGroceriesApp> createState() => _DoYourGroceriesAppState();
}

class _DoYourGroceriesAppState extends State<DoYourGroceriesApp> {
  @override
  void initState() {
    super.initState();
    widget.store
      ..dispatch(const RequestStoragePermissionStart())
      ..dispatch(const GetCamerasStart());
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.store,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // colorScheme: const ColorScheme(
          //   brightness: Brightness.dark,
          //   surface: Colors.yellow,
          //   primary: Colors.blueGrey,
          //   onPrimary: Colors.grey,
          //   secondary: Colors.white,
          //   onSecondary: Colors.blueGrey,
          //   error: Colors.blueGrey,
          //   onError: Colors.blueGrey,
          //   onSurface: Colors.blueGrey,
          // ),
          //scaffoldBackgroundColor: Colors.lightBlue,
          //primaryColor: Colors.blueGrey,
          colorSchemeSeed: Colors.lightBlue,
          useMaterial3: true,
        ),
        routerConfig: RouterApp(widget.store).router,
      ),
    );
  }
}
