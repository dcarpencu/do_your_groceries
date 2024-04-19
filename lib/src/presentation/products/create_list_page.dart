import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class CreateListPage extends StatefulWidget {
  const CreateListPage({super.key});

  @override
  State<CreateListPage> createState() => _CreateListPageState();
}

class _CreateListPageState extends State<CreateListPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final FocusScopeNode _descriptionFocusNode = FocusScopeNode();
  late Store<AppState> _store;
  final List<String> _options = const <String>[
    'cocktail.svg',
    'milk-tea.svg',
    'sunbathing.svg',
    'take-a-bath.svg',
    'snow-mountain.svg',
    'the-trees.svg',
    'suv.svg',
    'airplane.svg',
    'map.svg',
    'bench.svg',
    'emu.svg',
    'indicator.svg',
  ];
  int? _selected;

  void _onNext(BuildContext context) {
    if (!Form.of(context).validate()) {
      return;
    }

    _store = StoreProvider.of<AppState>(context, listen: false);
    _store..dispatch(
      CreateGroceryList(_titleController.text),
    )
    // ..dispatch(
    //   AddGroceryListToUser(groceryListId: _store.state.groceryLists.last.groceryListId),
    // )
    ..dispatch(
      const GetGroceryLists(),
    );
    //Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);

    Navigator.pop(context);
    // MaterialPageRoute<Widget>(builder: (BuildContext context) => const HomePage());

    MaterialPageRoute<Widget>(
      builder: (BuildContext context) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Builder(
          builder: (BuildContext context) {
            return Center(
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
                    // ListView.builder(
                    //   itemCount: _options.length,
                    //   itemBuilder: (BuildContext context, int index) {
                    //     final String item = _options[index];
                    //
                    //     return RadioListTile(
                    //       title: Text(item),
                    //       value: index,
                    //       groupValue: _selected,
                    //       onChanged: (int? value) {
                    //         setState(() {
                    //           _selected = value;
                    //         });
                    //       },
                    //     );
                    //   },
                    // ),
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
            );
          },
        ),
      ),
    );
  }
}
