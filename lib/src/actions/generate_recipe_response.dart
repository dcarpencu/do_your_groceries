part of 'index.dart';

const String _kGenerateRecipeResponsePendingId = 'GenerateRecipeResponse';

@freezed
class GenerateRecipeResponse with _$GenerateRecipeResponse implements AppAction {
  @Implements<ActionStart>()
  const factory GenerateRecipeResponse.start(GenerativeModel model, {
    @Default(_kGenerateRecipeResponsePendingId) String pendingId,
  }) = GenerateRecipeResponseStart;

  @Implements<ActionDone>()
  const factory GenerateRecipeResponse.successful(String? response, [
    @Default(_kGenerateRecipeResponsePendingId) String pendingId,
  ]) = GenerateRecipeResponseSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GenerateRecipeResponse.error(
    Object error, StackTrace stackTrace, [
    @Default(_kGenerateRecipeResponsePendingId) String pendingId,
  ]) = GenerateRecipeResponseError;

  static String get pendingKey => _kGenerateRecipeResponsePendingId;
}
