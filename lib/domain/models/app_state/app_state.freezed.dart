// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
// property
  Habit? get selectedHabitForEdit => throw _privateConstructorUsedError;
  Habit? get selectedHabitForStats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({Habit? selectedHabitForEdit, Habit? selectedHabitForStats});

  $HabitCopyWith<$Res>? get selectedHabitForEdit;
  $HabitCopyWith<$Res>? get selectedHabitForStats;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedHabitForEdit = freezed,
    Object? selectedHabitForStats = freezed,
  }) {
    return _then(_value.copyWith(
      selectedHabitForEdit: freezed == selectedHabitForEdit
          ? _value.selectedHabitForEdit
          : selectedHabitForEdit // ignore: cast_nullable_to_non_nullable
              as Habit?,
      selectedHabitForStats: freezed == selectedHabitForStats
          ? _value.selectedHabitForStats
          : selectedHabitForStats // ignore: cast_nullable_to_non_nullable
              as Habit?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HabitCopyWith<$Res>? get selectedHabitForEdit {
    if (_value.selectedHabitForEdit == null) {
      return null;
    }

    return $HabitCopyWith<$Res>(_value.selectedHabitForEdit!, (value) {
      return _then(_value.copyWith(selectedHabitForEdit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HabitCopyWith<$Res>? get selectedHabitForStats {
    if (_value.selectedHabitForStats == null) {
      return null;
    }

    return $HabitCopyWith<$Res>(_value.selectedHabitForStats!, (value) {
      return _then(_value.copyWith(selectedHabitForStats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Habit? selectedHabitForEdit, Habit? selectedHabitForStats});

  @override
  $HabitCopyWith<$Res>? get selectedHabitForEdit;
  @override
  $HabitCopyWith<$Res>? get selectedHabitForStats;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedHabitForEdit = freezed,
    Object? selectedHabitForStats = freezed,
  }) {
    return _then(_$AppStateImpl(
      selectedHabitForEdit: freezed == selectedHabitForEdit
          ? _value.selectedHabitForEdit
          : selectedHabitForEdit // ignore: cast_nullable_to_non_nullable
              as Habit?,
      selectedHabitForStats: freezed == selectedHabitForStats
          ? _value.selectedHabitForStats
          : selectedHabitForStats // ignore: cast_nullable_to_non_nullable
              as Habit?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStateImpl extends _AppState {
  const _$AppStateImpl({this.selectedHabitForEdit, this.selectedHabitForStats})
      : super._();

  factory _$AppStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStateImplFromJson(json);

// property
  @override
  final Habit? selectedHabitForEdit;
  @override
  final Habit? selectedHabitForStats;

  @override
  String toString() {
    return 'AppState(selectedHabitForEdit: $selectedHabitForEdit, selectedHabitForStats: $selectedHabitForStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.selectedHabitForEdit, selectedHabitForEdit) ||
                other.selectedHabitForEdit == selectedHabitForEdit) &&
            (identical(other.selectedHabitForStats, selectedHabitForStats) ||
                other.selectedHabitForStats == selectedHabitForStats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedHabitForEdit, selectedHabitForStats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateImplToJson(
      this,
    );
  }
}

abstract class _AppState extends AppState {
  const factory _AppState(
      {final Habit? selectedHabitForEdit,
      final Habit? selectedHabitForStats}) = _$AppStateImpl;
  const _AppState._() : super._();

  factory _AppState.fromJson(Map<String, dynamic> json) =
      _$AppStateImpl.fromJson;

  @override // property
  Habit? get selectedHabitForEdit;
  @override
  Habit? get selectedHabitForStats;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
