import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/containers/selected_list_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/camera/image_recognition_page.dart';
import 'package:do_you_groceries/src/ui_elements/bottom_app_bar.dart';
import 'package:do_you_groceries/src/ui_elements/components/background_wave_clipper.dart';
import 'package:do_you_groceries/src/ui_elements/components/hero_posts_widget.dart';
import 'package:do_you_groceries/src/ui_elements/components/shimmer/shimmer_products.dart';
import 'package:do_you_groceries/src/ui_elements/components/sliver_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'package:redux/redux.dart';

class UserProductsPage extends StatefulWidget {
  const UserProductsPage({super.key});

  @override
  State<UserProductsPage> createState() => _UserProductsPageState();
}

class _UserProductsPageState extends State<UserProductsPage> {
  late Store<AppState> _store;

  @override
  void initState() {
    super.initState();

    _store = StoreProvider.of<AppState>(context, listen: false);
    _store.dispatch(ListenForProductsStart(_store.state.selectedGroceryList!.groceryListId));
  }

  @override
  void dispose() {
    _store
      ..dispatch(ListenForProductsDone(_store.state.selectedGroceryList!.groceryListId))
      ..dispatch(const SetUnselectedList());

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SelectedListContainer(
      builder: (BuildContext context, GroceryList groceryList) {
        return Scaffold(
          body: PendingContainer(
            builder: (BuildContext context, Set<String> pending) {
              if (pending.contains(ListenForProducts.pendingKey)) {
                return Column(
                  children: <Widget>[
                    Stack(children: <Widget>[
                      const BackgroundWave(
                        height: 280,
                      ),
                      Positioned(
                        top: 145,
                        left: 40,
                        child: Text(
                          _store.state.selectedGroceryList!.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontFamily: 'Poppins',
                            height: 1.2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                          top: 103,
                          left: 256,
                          child: SizedBox(
                            height: 124,
                            child: SvgPicture.asset(
                              'assets/groceryListIcons/${_store.state.selectedGroceryList!.selectedIcon}.svg',
                              width: 100,
                              height: 100,
                            ),
                          ),),
                    ],),
                    const ShimmerProducts(),
                  ],
                );
              }

              return CustomScrollView(
                slivers: <Widget>[
                  SliverPersistentHeader(
                    delegate: SliverAppBarProducts(
                      _store.state.selectedGroceryList!.selectedIcon,
                      _store.state.selectedGroceryList!.title,
                    ),
                    pinned: true,
                  ),
                  if (_store.state.productsGroceryList.isNotEmpty)
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: _store.state.productsGroceryList.length,
                        (BuildContext context, int index) {
                          return HeroPosts(
                            product: _store.state.productsGroceryList[index],
                          );
                        },
                      ),
                    )
                  else
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: 1,
                        (BuildContext context, int index) {
                          return const Center(child: Text('No products YET.\nPlease add some!'));
                        },
                      ),
                    ),
                ],
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _store.dispatch(const GetCamerasStart());

              context.pushNamed('cameraApp');

              // Navigator.of(context).push(
              //   MaterialPageRoute<Widget>(
              //     builder: (BuildContext context) => const CameraApp(),
              //   ),
              // );
            },
            tooltip: 'Camera',
            child: const Icon(Icons.camera_alt),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          bottomNavigationBar: BottomAppBarWidget(store: _store,),
        );
      },
    );
  }
}
