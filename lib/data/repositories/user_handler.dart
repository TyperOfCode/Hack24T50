import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:step/data/fake_data.dart';
import 'package:step/domain/models.dart';

class UserStateNotifier extends StateNotifier<User> {
  // ignore: unused_field
  final User _initialUser;
  UserStateNotifier(this._initialUser)
      : super(
          _initialUser,
        );

  User? getCurrentUser() {
    return state;
  }

  void addHabit() {
    // TODO: Implement add habit
  }

  void editHabit(String habitId, Habit newHabit) {
    // TODO: Implement edit habit
  }

  void incrementHabit(String habitId) {
    List<Habit> habitList = state.habits.map((e) => e).toList();

    Habit? habit;
    int index = -1;
    for (int i = 0; i < habitList.length; i++) {
      if (habitList[i].id == habitId) {
        habit = habitList[i];
        index = i;
      }
    }

    if (habit == null || index == -1) {
      throw Exception(
          "incrementHabit: Habit should not be null here and index should not be -1.");
    }

    habit = habit.copyWith(
        todayValue:
            min(habit.todayValue + habit.incrementValue, habit.maxValue));

    habitList.removeAt(index);
    habitList.insert(index, habit);

    state = state.copyWith(habits: habitList);
  }
}

final userStateProvider = StateNotifierProvider<UserStateNotifier, User>(
  (ref) => UserStateNotifier(FakeData.baseFakeUser),
);
