// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_stat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserStats _$UserStatsFromJson(Map<String, dynamic> json) {
  return _UserStats.fromJson(json);
}

/// @nodoc
mixin _$UserStats {
// Id
  String get userId => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError; // Properties
  String? get lastActivity => throw _privateConstructorUsedError;
  List<double> get habitScores => throw _privateConstructorUsedError;
  double get avgHabitScore => throw _privateConstructorUsedError;
  List<Habit> get displayedHabits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStatsCopyWith<UserStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatsCopyWith<$Res> {
  factory $UserStatsCopyWith(UserStats value, $Res Function(UserStats) then) =
      _$UserStatsCopyWithImpl<$Res, UserStats>;
  @useResult
  $Res call(
      {String userId,
      String displayedName,
      String? lastActivity,
      List<double> habitScores,
      double avgHabitScore,
      List<Habit> displayedHabits});
}

/// @nodoc
class _$UserStatsCopyWithImpl<$Res, $Val extends UserStats>
    implements $UserStatsCopyWith<$Res> {
  _$UserStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayedName = null,
    Object? lastActivity = freezed,
    Object? habitScores = null,
    Object? avgHabitScore = null,
    Object? displayedHabits = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as String?,
      habitScores: null == habitScores
          ? _value.habitScores
          : habitScores // ignore: cast_nullable_to_non_nullable
              as List<double>,
      avgHabitScore: null == avgHabitScore
          ? _value.avgHabitScore
          : avgHabitScore // ignore: cast_nullable_to_non_nullable
              as double,
      displayedHabits: null == displayedHabits
          ? _value.displayedHabits
          : displayedHabits // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStatsImplCopyWith<$Res>
    implements $UserStatsCopyWith<$Res> {
  factory _$$UserStatsImplCopyWith(
          _$UserStatsImpl value, $Res Function(_$UserStatsImpl) then) =
      __$$UserStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String displayedName,
      String? lastActivity,
      List<double> habitScores,
      double avgHabitScore,
      List<Habit> displayedHabits});
}

/// @nodoc
class __$$UserStatsImplCopyWithImpl<$Res>
    extends _$UserStatsCopyWithImpl<$Res, _$UserStatsImpl>
    implements _$$UserStatsImplCopyWith<$Res> {
  __$$UserStatsImplCopyWithImpl(
      _$UserStatsImpl _value, $Res Function(_$UserStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayedName = null,
    Object? lastActivity = freezed,
    Object? habitScores = null,
    Object? avgHabitScore = null,
    Object? displayedHabits = null,
  }) {
    return _then(_$UserStatsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as String?,
      habitScores: null == habitScores
          ? _value._habitScores
          : habitScores // ignore: cast_nullable_to_non_nullable
              as List<double>,
      avgHabitScore: null == avgHabitScore
          ? _value.avgHabitScore
          : avgHabitScore // ignore: cast_nullable_to_non_nullable
              as double,
      displayedHabits: null == displayedHabits
          ? _value._displayedHabits
          : displayedHabits // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserStatsImpl implements _UserStats {
  const _$UserStatsImpl(
      {required this.userId,
      required this.displayedName,
      this.lastActivity,
      required final List<double> habitScores,
      required this.avgHabitScore,
      required final List<Habit> displayedHabits})
      : _habitScores = habitScores,
        _displayedHabits = displayedHabits;

  factory _$UserStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatsImplFromJson(json);

// Id
  @override
  final String userId;
  @override
  final String displayedName;
// Properties
  @override
  final String? lastActivity;
  final List<double> _habitScores;
  @override
  List<double> get habitScores {
    if (_habitScores is EqualUnmodifiableListView) return _habitScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habitScores);
  }

  @override
  final double avgHabitScore;
  final List<Habit> _displayedHabits;
  @override
  List<Habit> get displayedHabits {
    if (_displayedHabits is EqualUnmodifiableListView) return _displayedHabits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_displayedHabits);
  }

  @override
  String toString() {
    return 'UserStats(userId: $userId, displayedName: $displayedName, lastActivity: $lastActivity, habitScores: $habitScores, avgHabitScore: $avgHabitScore, displayedHabits: $displayedHabits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayedName, displayedName) ||
                other.displayedName == displayedName) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity) &&
            const DeepCollectionEquality()
                .equals(other._habitScores, _habitScores) &&
            (identical(other.avgHabitScore, avgHabitScore) ||
                other.avgHabitScore == avgHabitScore) &&
            const DeepCollectionEquality()
                .equals(other._displayedHabits, _displayedHabits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      displayedName,
      lastActivity,
      const DeepCollectionEquality().hash(_habitScores),
      avgHabitScore,
      const DeepCollectionEquality().hash(_displayedHabits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatsImplCopyWith<_$UserStatsImpl> get copyWith =>
      __$$UserStatsImplCopyWithImpl<_$UserStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatsImplToJson(
      this,
    );
  }
}

abstract class _UserStats implements UserStats {
  const factory _UserStats(
      {required final String userId,
      required final String displayedName,
      final String? lastActivity,
      required final List<double> habitScores,
      required final double avgHabitScore,
      required final List<Habit> displayedHabits}) = _$UserStatsImpl;

  factory _UserStats.fromJson(Map<String, dynamic> json) =
      _$UserStatsImpl.fromJson;

  @override // Id
  String get userId;
  @override
  String get displayedName;
  @override // Properties
  String? get lastActivity;
  @override
  List<double> get habitScores;
  @override
  double get avgHabitScore;
  @override
  List<Habit> get displayedHabits;
  @override
  @JsonKey(ignore: true)
  _$$UserStatsImplCopyWith<_$UserStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
