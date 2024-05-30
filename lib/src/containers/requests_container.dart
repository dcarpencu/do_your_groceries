import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class RequestsContainer extends StatelessWidget {
  const RequestsContainer({required this.builder, super.key});

  final ViewModelBuilder<List<AddRequest>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<AddRequest>>(
      converter: (Store<AppState> store) => store.state.requests,
      builder: builder,
    );
  }
}
