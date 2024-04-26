import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:redux/redux.dart';

class PendingContainer extends StatelessWidget {
  const PendingContainer({required this.builder, super.key});

  final ViewModelBuilder<Set<String>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Set<String>>(
      converter: (Store<AppState> store) => store.state.pending,
      builder: builder,
    );
  }
}
