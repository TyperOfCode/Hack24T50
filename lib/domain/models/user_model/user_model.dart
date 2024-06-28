import 'package:freezed_annotation/freezed_annotation.dart';

import '../habit_model/habit_model.dart';
import '../user_stat_model/user_stat_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  const factory User({
    // Id
    required String userId,
    // Properties
    required List<Habit> habits,
  }) = _User;

  const User._();

  UserStats toUserStats() {
    List<double> habitScores = habits.map((e) => e.getScore()).toList();
    double avgHabitScore =
        habitScores.reduce((v, e) => v + e) / habitScores.length;

    return UserStats(
      userId: userId,
      habitScores: habitScores,
      avgHabitScore: avgHabitScore,
      displayedHabits: habits.where((e) => e.displayed).toList(),
    );
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
