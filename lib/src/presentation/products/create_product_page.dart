import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class CreateProductPage extends StatefulWidget {
  const CreateProductPage({Key? key}) : super(key: key);

  @override
  State<CreateProductPage> createState() => _CreateProductPageState();
}

class _CreateProductPageState extends State<CreateProductPage> {
  final TextEditingController _title = TextEditingController();
  final TextEditingController _price = TextEditingController();
  final FocusScopeNode _priceFocusNode = FocusScopeNode();

  void _onNext(BuildContext context) {
    if (!Form.of(context).validate()) {
      return;
    }

    StoreProvider.of<AppState>(context).dispatch(
      CreateProduct(_title.text, double.parse(_price.text)),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Builder(
          builder: (BuildContext context) {
            return SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextFormField(
                        controller: _title,
                        keyboardType: TextInputType.text,
                        autofocus: true,
                        decoration: const InputDecoration(hintText: 'title'),
                        textInputAction: TextInputAction.next,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'please provide a title for your list';
                          }
                          return null;
                        },
                        onFieldSubmitted: (String value) {
                          FocusScope.of(context).requestFocus(_priceFocusNode);
                        },
                      ),
                      TextFormField(
                        controller: _price,
                        focusNode: _priceFocusNode,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        decoration: const InputDecoration(hintText: 'price'),
                        onFieldSubmitted: (String value) {
                          _onNext(context);
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextButton(onPressed: () => _onNext(context), child: const Text('Create product')),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel', style: TextStyle(color: Colors.black)),
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
