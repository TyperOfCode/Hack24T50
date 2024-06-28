import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit_model.freezed.dart';
part 'habit_model.g.dart';

@freezed
class Habit with _$Habit {
  const factory Habit({
    // Id
    required String name,
    required String id,
    required int iconHexId,
    // Bools
    required bool isMeasurable,
    required bool displayed,
    // Properties
    required double todayValue,
    required double incrementValue,
    required double dailyGoal,
    required double maxValue,
    required String unitLabel,
    required int hexColor,
    // Stats
    required HabitStats stats,
  }) = _Habit;

  const Habit._();

  double getScore() {
    // Should be number between 0 - 1 that describes how well the habit is going
    // TODO: Implement getScore
    return 1;
  }

  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);
}

@freezed
class HabitStats with _$HabitStats {
  const factory HabitStats({
    required int streak,
    required int longestStreak,
    required List<Day> days,
  }) = _HabitStats;

  factory HabitStats.fromJson(Map<String, dynamic> json) =>
      _$HabitStatsFromJson(json);
}

@freezed
class Day with _$Day {
  const factory Day({
    required DateTime date,
    required double value,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}
