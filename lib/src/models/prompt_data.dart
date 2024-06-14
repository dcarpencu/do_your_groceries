part of 'index.dart';

@freezed
class PromptData with _$PromptData {
  const factory PromptData({
    required String textInput,
    @Default(<BasicIngredientsFilter>{}) Set<BasicIngredientsFilter> basicIngredients,
    @Default(<CuisineFilter>{}) Set<CuisineFilter> cuisines,
    @Default(<DietaryRestrictionsFilter>{}) Set<DietaryRestrictionsFilter> dietaryRestrictions,
    @Default(<String>[]) List<String> additionalTextInput,
  }) = PromptData$;

  factory PromptData.fromJson(Map<dynamic, dynamic> json) => _$PromptDataFromJson(Map<String, dynamic>.from(json));
}
