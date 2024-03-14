import 'package:carousel_slider/carousel_slider.dart';
import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/home_page_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/card_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    StoreProvider.of<AppState>(context, listen: false).dispatch(GetProducts(_onResult));
  }


  void _onResult(AppAction action) {
    if (action is GetProductsSuccessful) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Page loaded.')));
    } else if (action is GetProductsError) {
      final Object error = action.error;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('An error has occurred $error')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return HomePageContainer(
      builder: (BuildContext context, AppState state) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(const Logout());
                },
                icon: const Icon(Icons.logout),
              ),
              title: const Text('DoYourGroceries'),
              actions: const <Widget>[],
            ),
            body: Column(
              children: <Widget>[
                // const Center(
                //   child: Card(
                //     child: SizedBox(
                //       width: 350,
                //       height: 150,
                //       child: Center(child: Text('Select one of your grocery lists')),
                //     ),
                //   ),
                // ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    // child: Card(
                    //   child: SizedBox(
                    //     width: MediaQuery.of(context).size.width,
                    //     height: 200,
                    //     child: const Center(child: Text('User greet message', style: TextStyle(fontSize: 16,),)),
                    //   ),
                    // ),
                    child: CardWidget(),
                  ),
                ),
                const SizedBox(height: 40,),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('Your lists. Here.', style: TextStyle(fontSize: 16,), textAlign: TextAlign.left,),
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(height: 200),
                  items: <int>[1,2,3,4,5].map((int i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                                color: Colors.green,
                            ),
                            child: Center(child: Text('shopping list $i', style: const TextStyle(fontSize: 16),)),
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              tooltip: 'Create',
              child: const Icon(Icons.camera),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              color: Colors.green,
              child: IconTheme(
                data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      tooltip: 'Open navigation menu',
                      icon: const Icon(Icons.menu),
                      onPressed: () {},
                    ),
                    const Spacer(),
                    IconButton(
                      tooltip: 'Search',
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        Navigator.pushNamed(context, '/productsSearch');
                      },
                    ),
                    IconButton(
                      tooltip: 'Favorite',
                      icon: const Icon(Icons.favorite),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

}
