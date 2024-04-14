import 'package:do_you_groceries/src/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'index.freezed.dart';
part 'create_user.dart';
part 'get_current_user.dart';
part 'login.dart';
part 'logout.dart';
part 'get_products.dart';
part 'update_user_products_list.dart';
part 'get_grocery_lists.dart';
part 'create_grocery_list.dart';
part 'listen_for_products.dart';
part 'listen_for_lists.dart';
part 'set.dart';
part 'create_product.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

abstract class UserAction implements AppAction {
  AppUser? get user;
}

typedef ActionResult = void Function(AppAction action);
