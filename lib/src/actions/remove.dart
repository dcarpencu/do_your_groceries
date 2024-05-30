part of 'index.dart';

@freezed
class RemoveRequestSimple with _$RemoveRequestSimple implements AppAction {
  const factory RemoveRequestSimple({required AddRequest request}) = RemoveRequestSimple$;
}
