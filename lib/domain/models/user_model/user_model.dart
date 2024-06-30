import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:step/data/fake_data.dart';

import '../habit_model/habit_model.dart';
import '../user_stat_model/user_stat_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  const factory User({
    // Id
    required String userId,
    String? lastActivity,
    // Properties
    required String displayName,
    required List<Habit> habits,
    required List<String> buddyIds,
  }) = _User;

  const User._();

  UserStats toUserStats() {
    List<double> habitScores = habits.map((e) => e.getScore()).toList();
    double avgHabitScore =
        habitScores.reduce((v, e) => v + e) / habitScores.length;

    return UserStats(
      displayedName: displayName,
      lastActivity: lastActivity,
      userId: userId,
      habitScores: habitScores,
      avgHabitScore: avgHabitScore,
      displayedHabits: habits.where((e) => e.displayed).toList(),
    );
  }

  List<Habit> availableHabits() {
    List<Habit> allHabits = FakeData.getAllHabits();
    List<String> habitIds = habits.map((e) => e.id).toList();

    return allHabits.where((e) => !habitIds.contains(e.id)).toList();
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
