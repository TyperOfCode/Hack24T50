import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:step/domain/models.dart';
import 'package:step/domain/models/app_state/app_state.dart';

class AppStateNotifier extends StateNotifier<AppState> {
  // ignore: unused_field
  final AppState _initialState;
  AppStateNotifier(this._initialState)
      : super(
          _initialState,
        );

  AppState? getCurrentState() {
    return state;
  }

  void selectHabitForStats(Habit habit) {
    state = state.copyWith(selectedHabitForStats: habit);
  }

  void selectHabitForEdit(Habit habit) {
    state = state.copyWith(selectedHabitForEdit: habit);
  }
}

final appStateProvider = StateNotifierProvider<AppStateNotifier, AppState>(
  (ref) => AppStateNotifier(AppState()),
);
