import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/components/icon_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';

class EditProductPage extends StatefulWidget {
  const EditProductPage({required this.product, super.key});

  final Product product;

  @override
  State<EditProductPage> createState() => _EditProductPageState();
}

class _EditProductPageState extends State<EditProductPage> {
  final TextEditingController _title = TextEditingController();
  final TextEditingController _price = TextEditingController();
  final FocusNode _priceFocusNode = FocusNode();
  late Store<AppState> _store;

  final List<String> _options = const <String>[
    'breakfast-hotcakes-kitchen-svgrepo-com',
    'beverage-drink-hot-svgrepo-com',
    'cone-cream-dessert-svgrepo-com',
    'cupcake-dessert-food-svgrepo-com',
    'gastronomy-kitchen-restaurant-svgrepo-com',
    'cone-cream-dessert-2-svgrepo-com',
    'chicken-food-gastronomy-svgrepo-com',
    'fast-food-gastronomy-2-svgrepo-com',
    'boiled-breakfast-egg-svgrepo-com',
    'food-fruit-gastronomy-svgrepo-com',
    'cone-cream-dessert-3-svgrepo-com',
    'food-fruit-healthy-svgrepo-com',
    'beverage-drink-soda-svgrepo-com',
    'beverage-coffee-cup-svgrepo-com',
    'avocado-food-fruit-svgrepo-com',
    'breakfast-cooking-egg-svgrepo-com',
    'bowl-breakfast-egg-svgrepo-com',
    'fast-food-gastronomy-svgrepo-com',
    'bananas-food-fruit-svgrepo-com',
    'fast-food-gastronomy-3-svgrepo-com',
    'bowl-food-health-svgrepo-com',
    'bakery-dessert-donut-svgrepo-com',
    'fast-food-french-svgrepo-com',
  ];
  int? _selected = 0;
  String _selectedValue = 'breakfast-hotcakes-kitchen-svgrepo-com';

  @override
  void initState() {
    _store = StoreProvider.of<AppState>(context, listen: false);
    super.initState();
  }

  void _onNext(BuildContext context) {
    if (!Form.of(context).validate()) {
      return;
    }

    _store
      ..dispatch(
        EditProductStart(
          image: _selectedValue,
          name: _title.text,
          price: double.parse(_price.text),
          product: widget.product,
        ),
      )
      ..dispatch(GetProductsAfterEditStart(groceryListId: _store.state.selectedGroceryList!.groceryListId));
    context
      ..pop()
      ..pop();
  }

  @override
  void dispose() {
    _title.dispose();
    _price.dispose();
    _priceFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Builder(
          builder: (BuildContext context) {
            return SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Editează produsul',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 120,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _options.length,
                          itemBuilder: (BuildContext context, int index) {
                            final String item = _options[index];

                            return IconTile(
                              item: item,
                              isSelected: _selected == index,
                              onTap: () {
                                setState(() {
                                  _selected = index;
                                  _selectedValue = item;
                                });
                              },
                              location: 'productsIcons',
                            );
                          },
                        ),
                      ),
                      TextFormField(
                        controller: _title,
                        keyboardType: TextInputType.text,
                        autofocus: true,
                        decoration: InputDecoration(
                          labelText: 'Nume produs',
                          hintText: widget.product.name,
                        ),
                        textInputAction: TextInputAction.next,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Introduceți vă rog un nume pentru noul produs';
                          }
                          return null;
                        },
                        onFieldSubmitted: (String value) {
                          FocusScope.of(context).requestFocus(_priceFocusNode);
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _price,
                        focusNode: _priceFocusNode,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Preț',
                          hintText: '${widget.product.price}',
                        ),
                        textInputAction: TextInputAction.done,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Introduceți vă rog prețul pentru produs';
                          }
                          return null;
                        },
                        onFieldSubmitted: (String value) {
                          _onNext(context);
                        },
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () => _onNext(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue,
                          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                        ),
                        child: const Text(
                          'Salvează modificări',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Renunță',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
