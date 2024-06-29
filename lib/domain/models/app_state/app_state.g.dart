// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) =>
    _$AppStateImpl(
      selectedHabitForEdit: json['selectedHabitForEdit'] == null
          ? null
          : Habit.fromJson(
              json['selectedHabitForEdit'] as Map<String, dynamic>),
      selectedHabitForStats: json['selectedHabitForStats'] == null
          ? null
          : Habit.fromJson(
              json['selectedHabitForStats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) =>
    <String, dynamic>{
      'selectedHabitForEdit': instance.selectedHabitForEdit,
      'selectedHabitForStats': instance.selectedHabitForStats,
    };
