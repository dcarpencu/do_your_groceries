import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class GeneratedRecipeContainer extends StatelessWidget {
  const GeneratedRecipeContainer({required this.builder, super.key});

  final ViewModelBuilder<String?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String?>(
      converter: (Store<AppState> store) => store.state.generatorResponse,
      builder: builder,
    );
  }
}
