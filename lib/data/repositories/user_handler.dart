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

  User getCurrentUser() {
    return state;
  }

  void addHabit(Habit habit) {
    List<Habit> habitList = state.habits.map((e) => e).toList();

    Habit? existing = habitList.firstWhereOrNull((e) => e.id == habit.id);

    if (existing != null) {
      return;
    }

    habitList.add(habit);

    state = state.copyWith(habits: habitList);
  }

  void removeHabit(String habitId) {
    List<Habit> habitList = state.habits.map((e) => e).toList();
    habitList.removeWhere((element) => element.id == habitId);

    state = state.copyWith(habits: habitList);
  }

  void editHabit(String habitId, Habit newHabit) {
    List<String> habitIdList = state.habits.map((e) => e.id).toList();
    List<Habit> habitList = state.habits.map((e) => e).toList();

    int index = habitIdList.indexOf(habitId);

    habitList.removeAt(index);
    habitList.insert(index, newHabit);

    state = state.copyWith(habits: habitList);
  }

  Habit? getHabit(String habitId) {
    return state.habits.firstWhereOrNull((e) => e.id == habitId);
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

    if (!habit.isMeasurable) {
      habit = habit.copyWith(todayValue: habit.todayValue == 1 ? 0 : 1);
    } else {
      habit = habit.copyWith(
          todayValue:
              min(habit.todayValue + habit.incrementValue, habit.maxValue));
    }

    habitList.removeAt(index);
    habitList.insert(index, habit);

    state = state.copyWith(habits: habitList);
  }

  UserStats? getUserStats(String userId) {
    var users = FakeData.getAllUsers();

    var user = users.firstWhereOrNull((e) => e.userId == userId);

    return user?.toUserStats();
  }

  String? getRandomUserId({List<String>? excludeList}) {
    var users = FakeData.getAllUsers();

    if (excludeList != null) {
      users = users.where((e) => !excludeList.contains(e.userId)).toList();
    }

    if (users.isEmpty) {
      return null;
    }

    return (users..shuffle()).first.userId;
  }

  void addBuddy(String buddyId) {
    var buddies = state.buddyIds.map((e) => e).toList();

    if (buddies.contains(buddyId)) {
      return;
    }

    buddies.add(buddyId);
    state = state.copyWith(buddyIds: buddies);
  }
}

final userStateProvider = StateNotifierProvider<UserStateNotifier, User>(
  (ref) => UserStateNotifier(FakeData.baseFakeUser),
);
