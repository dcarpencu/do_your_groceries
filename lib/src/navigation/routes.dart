import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/home.dart';
import 'package:do_you_groceries/src/presentation/home_page.dart';
import 'package:do_you_groceries/src/presentation/login/login_page.dart';
import 'package:do_you_groceries/src/presentation/login/sign_up_page.dart';
import 'package:do_you_groceries/src/presentation/products/user_products_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart';
import 'package:redux/redux.dart';

// Store<AppState> store = StoreProvider.of<AppState>();
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      name: 'home',
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const Home(),
      // redirect: (BuildContext context, GoRouterState state) {
      //   if(store.state.user == null) {
      //     return '/login';
      //   }
      //   return '/';
      // },
    ),
    GoRoute(
      name: 'homePage',
      path: '/homePage',
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
    ),
    GoRoute(path: '/groceryList',
    builder: (BuildContext context, GoRouterState state) => const UserProductsPage(),),
    // TODO(dcarpencu): implement login route when reworked
    GoRoute(path: '/login',
      builder: (BuildContext context, GoRouterState state) => const LoginPage(),
    // To check here:
    // routes: <RouteBase>[
    //   GoRoute(
    //     name: 'signUp',
    //     path: '/signUp',
    //     builder: (BuildContext context, GoRouterState state) => const SignupPage(),),
    // ],
),
    // GoRoute(path: '/signUp',
    //   builder: (BuildContext context, GoRouterState state) => const SignupPage(),),
  ],
);
