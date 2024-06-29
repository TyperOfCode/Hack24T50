// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      userId: json['userId'] as String,
      displayName: json['displayName'] as String,
      habits: (json['habits'] as List<dynamic>)
          .map((e) => Habit.fromJson(e as Map<String, dynamic>))
          .toList(),
      buddyIds:
          (json['buddyIds'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'displayName': instance.displayName,
      'habits': instance.habits,
      'buddyIds': instance.buddyIds,
    };
