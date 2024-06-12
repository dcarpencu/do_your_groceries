import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';

class EditListPage extends StatefulWidget {
  const EditListPage({required this.groceryList, super.key});

  final GroceryList groceryList;

  @override
  State<EditListPage> createState() => _EditListPageState();
}

class _EditListPageState extends State<EditListPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final FocusNode _descriptionFocusNode = FocusNode();
  late Store<AppState> _store;
  final List<String> _options = const <String>[
    'auchan',
    'carrefour',
    'kaufland',
    'penny',
    'profi',
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

  void _onNext(BuildContext context) {
    if (!Form.of(context).validate()) {
      return;
    }

    _store = StoreProvider.of<AppState>(context);
    _store.dispatch(
      EditGroceryListStart(
        title: _titleController.text,
        description: _descriptionController.text,
        selectedIcon: _selectedValue.toString(),
        groceryList: widget.groceryList,
      ),
    );

    print('\n\nGO HOMEPAGE\n\n');
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
                              'Edit Grocery List',
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 48),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  'Choose your list icon:',
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
                                  'Choose your list title:',
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            TextFormField(
                              //initialValue: widget.groceryList.title,
                              controller: _titleController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(labelText: 'Title', hintText: widget.groceryList.title),
                              textInputAction: TextInputAction.next,
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please provide a title for your product';
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
                                  'Choose your list description:',
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
                              InputDecoration(labelText: 'Description', hintText: widget.groceryList.description),
                              onFieldSubmitted: (String value) {
                                _onNext(context);
                              },
                            ),
                            const Spacer(),
                            TextButton(onPressed: () => _onNext(context), child: const Text('Create list')),
                            TextButton(
                              onPressed: () {
                                context.pop();
                              },
                              child: const Text('Cancel', style: TextStyle(color: Colors.black)),
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

class IconTile extends StatelessWidget {
  const IconTile({
    required this.item,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  final String item;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isSelected ? Colors.blueGrey.withOpacity(0.3) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: 80,
                height: 80,
                child: SvgPicture.asset('assets/groceryListIcons/$item.svg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
