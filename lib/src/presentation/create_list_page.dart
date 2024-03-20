import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class CreateListPage extends StatefulWidget {
  const CreateListPage({Key? key}) : super(key: key);

  @override
  State<CreateListPage> createState() => _CreateListPageState();
}

class _CreateListPageState extends State<CreateListPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final FocusScopeNode _descriptionFocusNode = FocusScopeNode();

  void _onNext(BuildContext context) {
    if (!Form.of(context).validate()) {
      return;
    }

    StoreProvider.of<AppState>(context).dispatch(
      CreateGroceryList(_titleController.text),
    );
    StoreProvider.of<AppState>(context).dispatch(
      const GetGroceryLists(),
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
                        controller: _titleController,
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
                          FocusScope.of(context).requestFocus(_descriptionFocusNode);
                        },
                      ),
                      TextFormField(
                        controller: _descriptionController,
                        focusNode: _descriptionFocusNode,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        decoration: const InputDecoration(hintText: 'description'),
                        onFieldSubmitted: (String value) {
                          _onNext(context);
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextButton(onPressed: () => _onNext(context), child: const Text('Create list')),
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
