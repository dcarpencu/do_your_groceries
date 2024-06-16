import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/components/icon_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';

class CreateListPage extends StatefulWidget {
  const CreateListPage({super.key});

  @override
  State<CreateListPage> createState() => _CreateListPageState();
}

class _CreateListPageState extends State<CreateListPage> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  late FocusNode _descriptionFocusNode;
  late Store<AppState> _store;
  final List<String> _options = const <String>[
    'auchan',
    'carrefour',
    'kaufland',
    'penny',
    'profi',
    'Logo_Mega_Image',
    'cocktail',
    'milk-tea',
    'sunbathing',
    'take-a-bath',
    'snow-mountain',
    'the-trees',
    'suv',
    'airplane',
    'map',
    'bench',
    'emu',
    'indicator',
  ];
  int? _selected = 0;
  String? _selectedValue = 'auchan';

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
    _descriptionFocusNode = FocusNode();
  }

  void _onNext(BuildContext context) {
    if (!Form.of(context).validate()) {
      return;
    }

    _store = StoreProvider.of<AppState>(context);
    _store.dispatch(
      CreateGroceryListStart(
        title: _titleController.text,
        description: _descriptionController.text,
        selectedIcon: _selectedValue.toString(),
      ),
    );
    context.pop();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _descriptionFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: SafeArea(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'Noua ta listă de cumpărături',
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 48),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  'Alege o iconiță:',
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
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
                                    location: 'groceryListIcons',
                                  );
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  'Alege numele listei tale de cumpărături:',
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            TextFormField(
                              controller: _titleController,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(labelText: 'Nume listă', hintText: 'Numele listei de cumpărături:'),
                              textInputAction: TextInputAction.next,

                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Introduceți un nume pentru lista de cumpărături';
                                } else if (value.length > 12) {
                                  return 'Introduceti un titlu mai scurt de 12 caracter';
                                }
                                return null;
                              },
                              onFieldSubmitted: (String value) {
                                FocusScope.of(context).requestFocus(_descriptionFocusNode);
                              },
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  'Alege o descriere pentru noua listă:',
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            TextFormField(
                              controller: _descriptionController,
                              focusNode: _descriptionFocusNode,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.done,
                              decoration:
                                  const InputDecoration(labelText: 'Descriere', hintText: 'Introduceți o descriere'),
                              onFieldSubmitted: (String value) {
                                _onNext(context);
                              },
                            ),
                            const Spacer(),
                            TextButton(onPressed: () => _onNext(context), child: const Text('Creare listă')),
                            TextButton(
                              onPressed: () {
                                context.pop();
                              },
                              child: const Text('Renunță', style: TextStyle(color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                    ),
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
