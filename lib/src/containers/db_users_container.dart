import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:redux/redux.dart';

class DataBaseUsersContainer extends StatelessWidget {
  const DataBaseUsersContainer({required this.builder, super.key});

  final ViewModelBuilder<Set<AppUser>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Set<AppUser>>(
      converter: (Store<AppState> store) => store.state.users,
      builder: builder,
    );
  }
}
