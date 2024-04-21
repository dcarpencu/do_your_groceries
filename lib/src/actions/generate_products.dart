part of 'index.dart';

@freezed
class GenerateProducts with _$GenerateProducts implements AppAction {
  const factory GenerateProducts() = GenerateProductsStart;

  const factory GenerateProducts.successful() = GenerateProductsSuccessful;

  @Implements<ErrorAction>()
  const factory GenerateProducts.error(Object error, StackTrace stackTrace) = GenerateProductsError;
}
