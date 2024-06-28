// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_stat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserStatsImpl _$$UserStatsImplFromJson(Map<String, dynamic> json) =>
    _$UserStatsImpl(
      userId: json['userId'] as String,
      habitScores: (json['habitScores'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      avgHabitScore: (json['avgHabitScore'] as num).toDouble(),
      displayedHabits: (json['displayedHabits'] as List<dynamic>)
          .map((e) => Habit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserStatsImplToJson(_$UserStatsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'habitScores': instance.habitScores,
      'avgHabitScore': instance.avgHabitScore,
      'displayedHabits': instance.displayedHabits,
    };
