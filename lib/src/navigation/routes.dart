import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/home_page.dart';
import 'package:do_you_groceries/src/presentation/login/login_page.dart';
import 'package:do_you_groceries/src/presentation/login/sign_up_page.dart';
import 'package:do_you_groceries/src/presentation/products/create_list_page.dart';
import 'package:do_you_groceries/src/presentation/products/user_products_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';

import '../presentation/home.dart';

class RouterApp {
  RouterApp(this.store) {
    router = GoRouter(
      routes: <RouteBase>[
        GoRoute(
          name: 'home',
          path: '/',
          builder: (BuildContext context, GoRouterState state) => const Home(),
        ),
        GoRoute(
          name: 'homePage',
          path: '/homePage',
          builder: (BuildContext context, GoRouterState state) => const HomePage(),
        ),
        GoRoute(
          name: 'login',
          path: '/login',
          builder: (BuildContext context, GoRouterState state) => const LoginPage(),
        ),
        GoRoute(
          name: 'createList',
          path: '/createList',
          builder: (BuildContext context, GoRouterState state) => const CreateListPage(),
        ),
        GoRoute(
          name: 'signUp',
          path: '/signUp',
          builder: (BuildContext context, GoRouterState state) => const SignupPage(),
        ),
        GoRoute(
          name: 'groceryList',
          path: '/groceryList',
          builder: (BuildContext context, GoRouterState state) => const UserProductsPage(),
        ),
      ],
    );
  }

  final Store<AppState> store;
  late final GoRouter router;
}
