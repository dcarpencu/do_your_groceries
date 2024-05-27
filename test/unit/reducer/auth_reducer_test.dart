import 'dart:convert';
import 'dart:io';

import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/reducer/reducer.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> main() async {
  final Map<String, dynamic> stateData =
  jsonDecode(File('./test/unit/reducer/res/state_with_user.json').readAsStringSync()) as Map<String, dynamic>;
  final Map<String, dynamic> userData =
  jsonDecode(File('./test/unit/reducer/res/user.json').readAsStringSync()) as Map<String, dynamic>;

  test('logoutSuccessful',() {

    final AppState initial = AppState.fromJson(stateData);

    final AppState result = reducer(initial, const Logout.successful());
    expect(result.user, isNull);
  });

  test('userAction', () {
    final AppState initial = AppState.fromJson(userData);

    final AppUser user = AppUser.fromJson(userData);
    final AppState result = reducer(initial, Login.successful(user));

    expect(result.user, user);
  });

  // group('updateFavouritesStart', () {
  //   final AppState initial = AppState.fromJson(stateData);
  //
  //   test('add', () {
  //     const UpdateFavorite action = UpdateFavorite(4, add: true);
  //     final AppState result = reducer(initial, action);
  //
  //     expect(result.user!.favoriteMovies, <int>[1, 2, 3, 4]);
  //   });
  //
  //   test('remove', () {
  //     const UpdateFavorite action = UpdateFavorite(3, add: false);
  //     final AppState result = reducer(initial, action);
  //
  //     expect(result.user!.favoriteMovies, <int>[1, 2]);
  //   });
  // });
}