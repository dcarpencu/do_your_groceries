import 'package:do_you_groceries/src/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'index.freezed.dart';
part 'create_user.dart';
part 'get_current_user.dart';
part 'login.dart';
part 'logout.dart';
part 'get_products.dart';


abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

abstract class UserAction implements AppAction {
  AppUser? get user;
}

typedef ActionResult = void Function(AppAction action);
