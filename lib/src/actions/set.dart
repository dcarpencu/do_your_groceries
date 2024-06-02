part of 'index.dart';

@freezed
class SetSelectedList with _$SetSelectedList implements AppAction {
  const factory SetSelectedList(String selectedGroceryList, String selectedGroceryListName) = SetSelectedList$;
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

@freezed
class SetPromptData with _$SetPromptData implements AppAction {
  const factory SetPromptData({required PromptData promptData}) = SetPromptData$;
}

@freezed
class AddPromptDataCuisine with _$AddPromptDataCuisine implements AppAction {
  const factory AddPromptDataCuisine({required CuisineFilter cuisine}) = AddPromptDataCuisine$;
}

@freezed
class SetCuisineFilterSelection with _$SetCuisineFilterSelection implements AppAction {
  const factory SetCuisineFilterSelection({required String selectedItems}) = SetCuisineFilterSelection$;
}

@freezed
class SetBasicIngredientsFilterSelection with _$SetBasicIngredientsFilterSelection implements AppAction {
  const factory SetBasicIngredientsFilterSelection({required String selectedItems}) = SetBasicIngredientsFilterSelection$;
}

@freezed
class SetDietaryRestrictionsFilterSelection with _$SetDietaryRestrictionsFilterSelection implements AppAction {
  const factory SetDietaryRestrictionsFilterSelection({required String selectedItems}) = SetDietaryRestrictionsFilterSelection$;
}

