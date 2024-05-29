import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/camera/image_recognition_page.dart';
import 'package:do_you_groceries/src/presentation/camera/image_view_page.dart';
import 'package:do_you_groceries/src/presentation/home.dart';
import 'package:do_you_groceries/src/presentation/home_page.dart';
import 'package:do_you_groceries/src/presentation/login/login_page.dart';
import 'package:do_you_groceries/src/presentation/login/sign_up_page.dart';
import 'package:do_you_groceries/src/presentation/products/create_list_page.dart';
import 'package:do_you_groceries/src/presentation/products/create_product_page.dart';
import 'package:do_you_groceries/src/presentation/products/user_products_page.dart';
import 'package:do_you_groceries/src/presentation/supermarkets/markets_page.dart';
import 'package:do_you_groceries/src/presentation/supermarkets/search_page.dart';
import 'package:do_you_groceries/src/presentation/supermarkets/supermarket_categories_page.dart';
import 'package:do_you_groceries/src/presentation/user/add_people_page.dart';
import 'package:do_you_groceries/src/presentation/user/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';

class RouterApp {
  RouterApp(this.store) {
    router = GoRouter(
      initialLocation: '/',
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
          routes: <RouteBase>[
            GoRoute(
              name: 'createList',
              path: 'createList',
              builder: (BuildContext context, GoRouterState state) => const CreateListPage(),
            ),
          ],
        ),
        GoRoute(
          name: 'login',
          path: '/login',
          builder: (BuildContext context, GoRouterState state) => const LoginPage(),
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
          routes: <RouteBase>[
            GoRoute(
              name: 'createProduct',
              path: 'createProductPage',
              builder: (BuildContext context, GoRouterState state) => const CreateProductPage(),
            ),
            GoRoute(
              name: 'cameraApp',
              path: 'cameraAppPage/:cameras',
              builder: (BuildContext context, GoRouterState state) {
                final List<CameraInfo> cameras = state.pathParameters['cameras']! as List<CameraInfo>;
                return CameraApp(cameras: cameras,);
              }
            ),
            GoRoute(
              name: 'marketsPage',
              path: 'marketsPage',
              builder: (BuildContext context, GoRouterState state) => const MarketsPage(),
              routes: <RouteBase>[
                GoRoute(
                  name: 'supermarketCategories',
                  path: 'supermarketCategoriesPage/:supermarketName',
                  builder: (BuildContext context, GoRouterState state) {
                    final String? supermarketName = state.pathParameters['supermarketName'];
                    return SupermarketCategoriesPage(
                      supermarketName: supermarketName!,
                    );
                  },
                  routes: <RouteBase>[
                    GoRoute(
                      name: 'searchProducts',
                      path: 'searchProductsPage/:marketName/:category/:supermarketCategoryLabel/:supermarketCategory',
                      builder: (BuildContext context, GoRouterState state) {
                        final String? marketName = state.pathParameters['marketName'];
                        final String? category = state.pathParameters['category'];
                        final String? supermarketCategoryLabel = state.pathParameters['supermarketCategoryLabel'];
                        final String? supermarketCategory = state.pathParameters['supermarketCategory'];
                        return SearchProductsPage(
                          marketName: marketName!,
                          category: category!,
                          supermarketCategoryLabel: supermarketCategoryLabel!,
                          supermarketCategory: supermarketCategory!,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        GoRoute(
            name: 'imageView',
            path: '/imageViewPage',
            builder: (BuildContext context, GoRouterState state) => const ImageViewPage(),
        ),
        GoRoute(
          name: 'userProfile',
          path: '/userProfilePage',
          builder: (BuildContext context, GoRouterState state) => const UserProfilePage(),
        ),
        GoRoute(
          name: 'addPeople',
          path: '/addPeoplePage',
          builder: (BuildContext context, GoRouterState state) => const AddPeoplePage(),
        ),
      ],

    );
  }

  final Store<AppState> store;
  late final GoRouter router;
}
