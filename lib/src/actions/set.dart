part of 'index.dart';

@freezed
class SetSelectedList with _$SetSelectedList implements AppAction {
  const factory SetSelectedList(String selectedGroceryList) = SetSelectedList$;
}

@freezed
class SetUnselectedList with _$SetUnselectedList implements AppAction {
  const factory SetUnselectedList() = SetUnselectedList$;
}

@freezed
class SetUserProductsToEmpty with _$SetUserProductsToEmpty implements AppAction {
  const factory SetUserProductsToEmpty() = SetUserProductsToEmpty$;
}

@freezed
class SetMarketProductsToEmpty with _$SetMarketProductsToEmpty implements AppAction {
  const factory SetMarketProductsToEmpty() = SetMarketProductsToEmpty$;
}

@freezed
class SetSelectedCamera with _$SetSelectedCamera implements AppAction {
  const factory SetSelectedCamera(CameraInfo selectedCamera) = SetSelectedCamera$;
}

@freezed
class SetPictureToNull with _$SetPictureToNull implements AppAction {
  const factory SetPictureToNull() = SetPictureToNull$;
}

@freezed
class SetNotificationOn with _$SetNotificationOn implements AppAction {
  const factory SetNotificationOn() = SetNotificationOn$;
}

@freezed
class SetNotificationOff with _$SetNotificationOff implements AppAction {
  const factory SetNotificationOff() = SetNotificationOff$;
}
