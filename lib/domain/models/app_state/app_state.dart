import 'package:freezed_annotation/freezed_annotation.dart';
import '../habit_model/habit_model.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    // property
    Habit? selectedHabitForEdit,
    Habit? selectedHabitForStats,
  }) = _AppState;

  const AppState._();

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}
