// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitImpl _$$HabitImplFromJson(Map<String, dynamic> json) => _$HabitImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      iconId: json['iconId'] as String,
      hexColor: (json['hexColor'] as num).toInt(),
      isMeasurable: json['isMeasurable'] as bool,
      displayed: json['displayed'] as bool,
      todayValue: (json['todayValue'] as num).toInt(),
      incrementValue: (json['incrementValue'] as num).toInt(),
      goal: (json['goal'] as num).toInt(),
      maxValue: (json['maxValue'] as num).toInt(),
      stats: HabitStats.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HabitImplToJson(_$HabitImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'iconId': instance.iconId,
      'hexColor': instance.hexColor,
      'isMeasurable': instance.isMeasurable,
      'displayed': instance.displayed,
      'todayValue': instance.todayValue,
      'incrementValue': instance.incrementValue,
      'goal': instance.goal,
      'maxValue': instance.maxValue,
      'stats': instance.stats,
    };

_$HabitStatsImpl _$$HabitStatsImplFromJson(Map<String, dynamic> json) =>
    _$HabitStatsImpl(
      streak: (json['streak'] as num).toInt(),
      longestStreak: (json['longestStreak'] as num).toInt(),
      days: (json['days'] as List<dynamic>)
          .map((e) => Day.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HabitStatsImplToJson(_$HabitStatsImpl instance) =>
    <String, dynamic>{
      'streak': instance.streak,
      'longestStreak': instance.longestStreak,
      'days': instance.days,
    };

_$DayImpl _$$DayImplFromJson(Map<String, dynamic> json) => _$DayImpl(
      date: DateTime.parse(json['date'] as String),
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$$DayImplToJson(_$DayImpl instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'value': instance.value,
    };
