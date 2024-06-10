import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/containers/selected_list_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/camera/image_recognition_page.dart';
import 'package:do_you_groceries/src/ui_elements/bottom_app_bar.dart';
import 'package:do_you_groceries/src/ui_elements/components/background_wave_clipper.dart';
import 'package:do_you_groceries/src/ui_elements/components/hero_transition_demo.dart';
import 'package:do_you_groceries/src/ui_elements/components/shimmer/shimmer_products.dart';
import 'package:do_you_groceries/src/ui_elements/components/sliver_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'package:redux/redux.dart';

class UserProductsPage extends StatefulWidget {
  const UserProductsPage({Key? key}) : super(key: key);

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
                    SizedBox(
                      height: 280,
                      child: Stack(children: [
                        ClipPath(
                            clipper: BackgroundWaveClipper(),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 280,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                colors: <Color>[Colors.lightBlueAccent, Colors.lightBlue],
                              )),
                            )),
                        const Positioned(
                          top: 100,
                          left: 20,
                          child: Text(
                            'DoYourGroceries',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontFamily: 'Poppins',
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 88,
                          left: 256,
                          child: SizedBox(height: 124, child: Image.asset('assets/Backgrounds/grocery-bag.png')),
                        )
                      ]),
                    ),
                    const ShimmerProducts(),
                  ],
                );
              }

              return CustomScrollView(
                slivers: <Widget>[
                  SliverPersistentHeader(
                    delegate: SliverAppBarProducts(_store.state.selectedGroceryList!.selectedIcon, _store.state.selectedGroceryList!.title, ),
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
                    )
                ],
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _store.dispatch(const GetCamerasStart());

              //context.goNamed('cameraApp', pathParameters: <String, String>{'cameras': _store.state.cameras});

              Navigator.of(context).push(
                MaterialPageRoute<Widget>(
                  builder: (BuildContext context) => CameraApp(
                    cameras: _store.state.cameras,
                  ),
                ),
              );
            },
            tooltip: 'Camera',
            child: const Icon(Icons.camera_alt),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          bottomNavigationBar: const BottomAppBarWidget(
            route: 'marketsPage',
          ),
        );
      },
    );
  }
}
