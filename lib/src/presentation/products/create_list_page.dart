import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
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
  String? _selectedValue = 'cocktail';

  void _onNext(BuildContext context) {
    if (!Form.of(context).validate()) {
      return;
    }

    _store = StoreProvider.of<AppState>(context);
    _store.dispatch(
      CreateGroceryList(
        title: _titleController.text,
        description: _descriptionController.text,
        selectedIcon: _selectedValue.toString(),
      ),
    );

   context.go('/homePage');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          child: Builder(
            builder: (BuildContext context) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SafeArea(
                    child: Column(
                      //mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
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
                          width: double.infinity, // Set the width to make it horizontally scrollable
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _options.length,
                            itemBuilder: (BuildContext context, int index) {
                              final String item = _options[index];

                              return SizedBox(
                                width: 200,
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 60,
                                      height: 60,
                                      child: SvgPicture.asset('assets/groceryListIcons/$item.svg'),
                                    ),
                                    RadioListTile<int>(
                                      title: Text(item),
                                      value: index,
                                      groupValue: _selected,
                                      onChanged: (int? value) {
                                        setState(() {
                                          _selected = value;
                                          _selectedValue = item;
                                        });
                                      },
                                    ),
                                  ],
                                ),
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
                          controller: _titleController,
                          keyboardType: TextInputType.text,
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
                          decoration: const InputDecoration(hintText: 'description'),
                          onFieldSubmitted: (String value) {
                            _onNext(context);
                          },
                        ),
                        const SizedBox(height: 92),
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
              );
            },
          ),
        ),
      ),
    );
  }
}
