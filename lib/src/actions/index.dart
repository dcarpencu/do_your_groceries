import 'package:camera/camera.dart';
import 'package:do_you_groceries/src/models/filter_chip_enums.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

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
part 'add_product_to_grocery_list.dart';
part 'request_storage_permission.dart';
part 'get_cameras.dart';
part 'initalize_controller_pending.dart';
part 'take_picture.dart';
part 'get_image_labels.dart';
part 'remove_product_from_grocery_list.dart';
part 'remove_grocery_list.dart';
part 'get_products_for_camera.dart';
part 'get_users.dart';
part 'send_request.dart';
part 'remove_request.dart';
part 'listen_for_requests.dart';
part 'remove.dart';
part 'accept_request.dart';
part 'update_grocery_lists.dart';
part 'generate_recipe_response.dart';
part 'edit_grocery_list.dart';
part 'edit_product.dart';
part 'get_supermarket_products_new.dart';
part 'get_products_after_edit.dart';
part 'switch_product.dart';
part 'smart_update_list.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

abstract class PendingAction {
  String get pendingId;
}

abstract class ActionStart implements PendingAction {}

abstract class ActionDone implements PendingAction {}

abstract class UserAction implements AppAction {
  AppUser? get user;
}

typedef ActionResult = void Function(AppAction action);
