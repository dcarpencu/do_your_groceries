import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class HomePageContainer extends StatelessWidget {
  const HomePageContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<AppState> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (Store<AppState> store) => store.state,
      builder: builder,
    );
  }
}
