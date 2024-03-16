import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/home_page_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/shopping_list.dart';
import 'package:do_you_groceries/src/ui_elements/card_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<String> lists = <String>['Personal list', 'Shared list', 'Auchan list', 'new list', 'Teo"s list'];

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
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(const Logout());
                },
                icon: const Icon(Icons.logout),
              ),
              title: const Text(
                'DoYourGroceries',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              actions: const <Widget>[],
            ),
            body: SafeArea(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 16,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Your lists. Here.',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView.separated(
                      itemCount: lists.length,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      separatorBuilder: (BuildContext context, int index) => const SizedBox(
                        width: 16,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 210,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 120,
                                height: 120,
                                child: SvgPicture.asset('lib/src/assets/scissors-svgrepo-com.svg'),
                              ),
                              Text(
                                lists[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              const Text(
                                'short description',
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(height: 10,),
                                  Container(
                                    height: 45,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(colors: <Color>[Colors.green, Colors.teal]),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(16),
                                        ),

                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          // ignore: always_specify_types
                                          MaterialPageRoute(builder: (BuildContext context) => const ShoppingList()),
                                        );
                                      },
                                      child: const Center(
                                          child: Text(
                                        'View',
                                        style:
                                            TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                                      ),),),
                              ),
                              const SizedBox(height: 10,)
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: CardWidget(),
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              tooltip: 'Create',
              child: const Icon(Icons.camera),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              height: 60,
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
                        Navigator.pushNamed(context, '/markets');
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
