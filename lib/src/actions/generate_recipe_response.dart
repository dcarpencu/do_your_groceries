part of 'index.dart';

@freezed
class GenerateRecipeResponse with _$GenerateRecipeResponse implements AppAction {
  const factory GenerateRecipeResponse(GenerativeModel model, String prompt,) = GenerateRecipeResponseStart;

  const factory GenerateRecipeResponse.successful() = GenerateRecipeResponseSuccessful;

  @Implements<ErrorAction>()
  const factory GenerateRecipeResponse.error(Object error, StackTrace stackTrace) = GenerateRecipeResponseError;
}
