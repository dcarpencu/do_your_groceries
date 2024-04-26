import 'package:do_you_groceries/src/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'index.freezed.dart';
part 'login.dart';
part 'create_user.dart';
part 'get_current_user.dart';
part 'logout.dart';
part 'get_products.dart';
part 'get_grocery_lists.dart';
part 'create_grocery_list.dart';
part 'listen_for_products.dart';
part 'set.dart';
part 'create_product.dart';
part 'get_supermarket_products.dart';
part 'generate_products.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

abstract class UserAction implements AppAction {
  AppUser? get user;
}

typedef ActionResult = void Function(AppAction action);
