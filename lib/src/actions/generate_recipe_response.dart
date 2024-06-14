part of 'index.dart';

@freezed
abstract class ListenForGeneratedRecipeResponse with _$ListenForGeneratedRecipeResponse implements AppAction {
  const factory ListenForGeneratedRecipeResponse.start(GenerativeModel model, String prompt,
      {required bool isGeneratingRecipe}) = ListenForGeneratedRecipeResponseStart;

  const factory ListenForGeneratedRecipeResponse.done({required bool isGeneratingRecipe}) =
      ListenForGeneratedRecipeResponseDone;

  const factory ListenForGeneratedRecipeResponse.event(String? generatedResponse) = OnGeneratedRecipeResonseEvent;

  @Implements<ErrorAction>()
  const factory ListenForGeneratedRecipeResponse.error(Object error, StackTrace stackTrace) =
      _ListenForGeneratedRecipeResponseError;
}
