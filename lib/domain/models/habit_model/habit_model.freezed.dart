// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Habit _$HabitFromJson(Map<String, dynamic> json) {
  return _Habit.fromJson(json);
}

/// @nodoc
mixin _$Habit {
// Id
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get iconHexId => throw _privateConstructorUsedError; // Bools
  bool get isMeasurable => throw _privateConstructorUsedError;
  bool get displayed => throw _privateConstructorUsedError; // Properties
  double get todayValue => throw _privateConstructorUsedError;
  double get incrementValue => throw _privateConstructorUsedError;
  double get dailyGoal => throw _privateConstructorUsedError;
  double get maxValue => throw _privateConstructorUsedError;
  String get unitLabel => throw _privateConstructorUsedError;
  int get hexColor => throw _privateConstructorUsedError; // Stats
  HabitStats get stats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HabitCopyWith<Habit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitCopyWith<$Res> {
  factory $HabitCopyWith(Habit value, $Res Function(Habit) then) =
      _$HabitCopyWithImpl<$Res, Habit>;
  @useResult
  $Res call(
      {String name,
      String id,
      int iconHexId,
      bool isMeasurable,
      bool displayed,
      double todayValue,
      double incrementValue,
      double dailyGoal,
      double maxValue,
      String unitLabel,
      int hexColor,
      HabitStats stats});

  $HabitStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$HabitCopyWithImpl<$Res, $Val extends Habit>
    implements $HabitCopyWith<$Res> {
  _$HabitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? iconHexId = null,
    Object? isMeasurable = null,
    Object? displayed = null,
    Object? todayValue = null,
    Object? incrementValue = null,
    Object? dailyGoal = null,
    Object? maxValue = null,
    Object? unitLabel = null,
    Object? hexColor = null,
    Object? stats = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      iconHexId: null == iconHexId
          ? _value.iconHexId
          : iconHexId // ignore: cast_nullable_to_non_nullable
              as int,
      isMeasurable: null == isMeasurable
          ? _value.isMeasurable
          : isMeasurable // ignore: cast_nullable_to_non_nullable
              as bool,
      displayed: null == displayed
          ? _value.displayed
          : displayed // ignore: cast_nullable_to_non_nullable
              as bool,
      todayValue: null == todayValue
          ? _value.todayValue
          : todayValue // ignore: cast_nullable_to_non_nullable
              as double,
      incrementValue: null == incrementValue
          ? _value.incrementValue
          : incrementValue // ignore: cast_nullable_to_non_nullable
              as double,
      dailyGoal: null == dailyGoal
          ? _value.dailyGoal
          : dailyGoal // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      unitLabel: null == unitLabel
          ? _value.unitLabel
          : unitLabel // ignore: cast_nullable_to_non_nullable
              as String,
      hexColor: null == hexColor
          ? _value.hexColor
          : hexColor // ignore: cast_nullable_to_non_nullable
              as int,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as HabitStats,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HabitStatsCopyWith<$Res> get stats {
    return $HabitStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HabitImplCopyWith<$Res> implements $HabitCopyWith<$Res> {
  factory _$$HabitImplCopyWith(
          _$HabitImpl value, $Res Function(_$HabitImpl) then) =
      __$$HabitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      int iconHexId,
      bool isMeasurable,
      bool displayed,
      double todayValue,
      double incrementValue,
      double dailyGoal,
      double maxValue,
      String unitLabel,
      int hexColor,
      HabitStats stats});

  @override
  $HabitStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$$HabitImplCopyWithImpl<$Res>
    extends _$HabitCopyWithImpl<$Res, _$HabitImpl>
    implements _$$HabitImplCopyWith<$Res> {
  __$$HabitImplCopyWithImpl(
      _$HabitImpl _value, $Res Function(_$HabitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? iconHexId = null,
    Object? isMeasurable = null,
    Object? displayed = null,
    Object? todayValue = null,
    Object? incrementValue = null,
    Object? dailyGoal = null,
    Object? maxValue = null,
    Object? unitLabel = null,
    Object? hexColor = null,
    Object? stats = null,
  }) {
    return _then(_$HabitImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      iconHexId: null == iconHexId
          ? _value.iconHexId
          : iconHexId // ignore: cast_nullable_to_non_nullable
              as int,
      isMeasurable: null == isMeasurable
          ? _value.isMeasurable
          : isMeasurable // ignore: cast_nullable_to_non_nullable
              as bool,
      displayed: null == displayed
          ? _value.displayed
          : displayed // ignore: cast_nullable_to_non_nullable
              as bool,
      todayValue: null == todayValue
          ? _value.todayValue
          : todayValue // ignore: cast_nullable_to_non_nullable
              as double,
      incrementValue: null == incrementValue
          ? _value.incrementValue
          : incrementValue // ignore: cast_nullable_to_non_nullable
              as double,
      dailyGoal: null == dailyGoal
          ? _value.dailyGoal
          : dailyGoal // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      unitLabel: null == unitLabel
          ? _value.unitLabel
          : unitLabel // ignore: cast_nullable_to_non_nullable
              as String,
      hexColor: null == hexColor
          ? _value.hexColor
          : hexColor // ignore: cast_nullable_to_non_nullable
              as int,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as HabitStats,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HabitImpl extends _Habit {
  const _$HabitImpl(
      {required this.name,
      required this.id,
      required this.iconHexId,
      required this.isMeasurable,
      required this.displayed,
      required this.todayValue,
      required this.incrementValue,
      required this.dailyGoal,
      required this.maxValue,
      required this.unitLabel,
      required this.hexColor,
      required this.stats})
      : super._();

  factory _$HabitImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitImplFromJson(json);

// Id
  @override
  final String name;
  @override
  final String id;
  @override
  final int iconHexId;
// Bools
  @override
  final bool isMeasurable;
  @override
  final bool displayed;
// Properties
  @override
  final double todayValue;
  @override
  final double incrementValue;
  @override
  final double dailyGoal;
  @override
  final double maxValue;
  @override
  final String unitLabel;
  @override
  final int hexColor;
// Stats
  @override
  final HabitStats stats;

  @override
  String toString() {
    return 'Habit(name: $name, id: $id, iconHexId: $iconHexId, isMeasurable: $isMeasurable, displayed: $displayed, todayValue: $todayValue, incrementValue: $incrementValue, dailyGoal: $dailyGoal, maxValue: $maxValue, unitLabel: $unitLabel, hexColor: $hexColor, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.iconHexId, iconHexId) ||
                other.iconHexId == iconHexId) &&
            (identical(other.isMeasurable, isMeasurable) ||
                other.isMeasurable == isMeasurable) &&
            (identical(other.displayed, displayed) ||
                other.displayed == displayed) &&
            (identical(other.todayValue, todayValue) ||
                other.todayValue == todayValue) &&
            (identical(other.incrementValue, incrementValue) ||
                other.incrementValue == incrementValue) &&
            (identical(other.dailyGoal, dailyGoal) ||
                other.dailyGoal == dailyGoal) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.unitLabel, unitLabel) ||
                other.unitLabel == unitLabel) &&
            (identical(other.hexColor, hexColor) ||
                other.hexColor == hexColor) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      id,
      iconHexId,
      isMeasurable,
      displayed,
      todayValue,
      incrementValue,
      dailyGoal,
      maxValue,
      unitLabel,
      hexColor,
      stats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitImplCopyWith<_$HabitImpl> get copyWith =>
      __$$HabitImplCopyWithImpl<_$HabitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitImplToJson(
      this,
    );
  }
}

abstract class _Habit extends Habit {
  const factory _Habit(
      {required final String name,
      required final String id,
      required final int iconHexId,
      required final bool isMeasurable,
      required final bool displayed,
      required final double todayValue,
      required final double incrementValue,
      required final double dailyGoal,
      required final double maxValue,
      required final String unitLabel,
      required final int hexColor,
      required final HabitStats stats}) = _$HabitImpl;
  const _Habit._() : super._();

  factory _Habit.fromJson(Map<String, dynamic> json) = _$HabitImpl.fromJson;

  @override // Id
  String get name;
  @override
  String get id;
  @override
  int get iconHexId;
  @override // Bools
  bool get isMeasurable;
  @override
  bool get displayed;
  @override // Properties
  double get todayValue;
  @override
  double get incrementValue;
  @override
  double get dailyGoal;
  @override
  double get maxValue;
  @override
  String get unitLabel;
  @override
  int get hexColor;
  @override // Stats
  HabitStats get stats;
  @override
  @JsonKey(ignore: true)
  _$$HabitImplCopyWith<_$HabitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HabitStats _$HabitStatsFromJson(Map<String, dynamic> json) {
  return _HabitStats.fromJson(json);
}

/// @nodoc
mixin _$HabitStats {
  int get streak => throw _privateConstructorUsedError;
  int get longestStreak => throw _privateConstructorUsedError;
  List<Day> get days => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HabitStatsCopyWith<HabitStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitStatsCopyWith<$Res> {
  factory $HabitStatsCopyWith(
          HabitStats value, $Res Function(HabitStats) then) =
      _$HabitStatsCopyWithImpl<$Res, HabitStats>;
  @useResult
  $Res call({int streak, int longestStreak, List<Day> days});
}

/// @nodoc
class _$HabitStatsCopyWithImpl<$Res, $Val extends HabitStats>
    implements $HabitStatsCopyWith<$Res> {
  _$HabitStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streak = null,
    Object? longestStreak = null,
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      streak: null == streak
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Day>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitStatsImplCopyWith<$Res>
    implements $HabitStatsCopyWith<$Res> {
  factory _$$HabitStatsImplCopyWith(
          _$HabitStatsImpl value, $Res Function(_$HabitStatsImpl) then) =
      __$$HabitStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int streak, int longestStreak, List<Day> days});
}

/// @nodoc
class __$$HabitStatsImplCopyWithImpl<$Res>
    extends _$HabitStatsCopyWithImpl<$Res, _$HabitStatsImpl>
    implements _$$HabitStatsImplCopyWith<$Res> {
  __$$HabitStatsImplCopyWithImpl(
      _$HabitStatsImpl _value, $Res Function(_$HabitStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streak = null,
    Object? longestStreak = null,
    Object? days = null,
  }) {
    return _then(_$HabitStatsImpl(
      streak: null == streak
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Day>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HabitStatsImpl implements _HabitStats {
  const _$HabitStatsImpl(
      {required this.streak,
      required this.longestStreak,
      required final List<Day> days})
      : _days = days;

  factory _$HabitStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitStatsImplFromJson(json);

  @override
  final int streak;
  @override
  final int longestStreak;
  final List<Day> _days;
  @override
  List<Day> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  String toString() {
    return 'HabitStats(streak: $streak, longestStreak: $longestStreak, days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitStatsImpl &&
            (identical(other.streak, streak) || other.streak == streak) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak) &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, streak, longestStreak,
      const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitStatsImplCopyWith<_$HabitStatsImpl> get copyWith =>
      __$$HabitStatsImplCopyWithImpl<_$HabitStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitStatsImplToJson(
      this,
    );
  }
}

abstract class _HabitStats implements HabitStats {
  const factory _HabitStats(
      {required final int streak,
      required final int longestStreak,
      required final List<Day> days}) = _$HabitStatsImpl;

  factory _HabitStats.fromJson(Map<String, dynamic> json) =
      _$HabitStatsImpl.fromJson;

  @override
  int get streak;
  @override
  int get longestStreak;
  @override
  List<Day> get days;
  @override
  @JsonKey(ignore: true)
  _$$HabitStatsImplCopyWith<_$HabitStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Day _$DayFromJson(Map<String, dynamic> json) {
  return _Day.fromJson(json);
}

/// @nodoc
mixin _$Day {
  DateTime get date => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayCopyWith<Day> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res, Day>;
  @useResult
  $Res call({DateTime date, double value});
}

/// @nodoc
class _$DayCopyWithImpl<$Res, $Val extends Day> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayImplCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$$DayImplCopyWith(_$DayImpl value, $Res Function(_$DayImpl) then) =
      __$$DayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, double value});
}

/// @nodoc
class __$$DayImplCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res, _$DayImpl>
    implements _$$DayImplCopyWith<$Res> {
  __$$DayImplCopyWithImpl(_$DayImpl _value, $Res Function(_$DayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_$DayImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayImpl implements _Day {
  const _$DayImpl({required this.date, required this.value});

  factory _$DayImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayImplFromJson(json);

  @override
  final DateTime date;
  @override
  final double value;

  @override
  String toString() {
    return 'Day(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      __$$DayImplCopyWithImpl<_$DayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayImplToJson(
      this,
    );
  }
}

abstract class _Day implements Day {
  const factory _Day(
      {required final DateTime date, required final double value}) = _$DayImpl;

  factory _Day.fromJson(Map<String, dynamic> json) = _$DayImpl.fromJson;

  @override
  DateTime get date;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
