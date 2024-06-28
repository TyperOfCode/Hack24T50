import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:step/domain/models/habit_model/habit_model.dart';

part 'user_stat_model.freezed.dart';
part 'user_stat_model.g.dart';

@freezed
class UserStats with _$UserStats {
  const factory UserStats({
    // Id
    required String userId,
    // Properties
    required List<double> habitScores,
    required double avgHabitScore,
    required List<Habit> displayedHabits,
  }) = _UserStats;

  factory UserStats.fromJson(Map<String, dynamic> json) =>
      _$UserStatsFromJson(json);
}
