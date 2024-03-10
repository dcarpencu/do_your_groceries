part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
}) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
