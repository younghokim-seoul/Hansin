// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_enable_select_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarEnableSelectEntity {
  String get year => throw _privateConstructorUsedError;
  String get month => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  String get resYn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarEnableSelectEntityCopyWith<CalendarEnableSelectEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEnableSelectEntityCopyWith<$Res> {
  factory $CalendarEnableSelectEntityCopyWith(CalendarEnableSelectEntity value,
          $Res Function(CalendarEnableSelectEntity) then) =
      _$CalendarEnableSelectEntityCopyWithImpl<$Res,
          CalendarEnableSelectEntity>;
  @useResult
  $Res call({String year, String month, String day, String resYn});
}

/// @nodoc
class _$CalendarEnableSelectEntityCopyWithImpl<$Res,
        $Val extends CalendarEnableSelectEntity>
    implements $CalendarEnableSelectEntityCopyWith<$Res> {
  _$CalendarEnableSelectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? day = null,
    Object? resYn = null,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      resYn: null == resYn
          ? _value.resYn
          : resYn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarEnableSelectEntityImplCopyWith<$Res>
    implements $CalendarEnableSelectEntityCopyWith<$Res> {
  factory _$$CalendarEnableSelectEntityImplCopyWith(
          _$CalendarEnableSelectEntityImpl value,
          $Res Function(_$CalendarEnableSelectEntityImpl) then) =
      __$$CalendarEnableSelectEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String year, String month, String day, String resYn});
}

/// @nodoc
class __$$CalendarEnableSelectEntityImplCopyWithImpl<$Res>
    extends _$CalendarEnableSelectEntityCopyWithImpl<$Res,
        _$CalendarEnableSelectEntityImpl>
    implements _$$CalendarEnableSelectEntityImplCopyWith<$Res> {
  __$$CalendarEnableSelectEntityImplCopyWithImpl(
      _$CalendarEnableSelectEntityImpl _value,
      $Res Function(_$CalendarEnableSelectEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? day = null,
    Object? resYn = null,
  }) {
    return _then(_$CalendarEnableSelectEntityImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      resYn: null == resYn
          ? _value.resYn
          : resYn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CalendarEnableSelectEntityImpl implements _CalendarEnableSelectEntity {
  _$CalendarEnableSelectEntityImpl(
      {required this.year,
      required this.month,
      required this.day,
      required this.resYn});

  @override
  final String year;
  @override
  final String month;
  @override
  final String day;
  @override
  final String resYn;

  @override
  String toString() {
    return 'CalendarEnableSelectEntity(year: $year, month: $month, day: $day, resYn: $resYn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarEnableSelectEntityImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.resYn, resYn) || other.resYn == resYn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year, month, day, resYn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarEnableSelectEntityImplCopyWith<_$CalendarEnableSelectEntityImpl>
      get copyWith => __$$CalendarEnableSelectEntityImplCopyWithImpl<
          _$CalendarEnableSelectEntityImpl>(this, _$identity);
}

abstract class _CalendarEnableSelectEntity
    implements CalendarEnableSelectEntity {
  factory _CalendarEnableSelectEntity(
      {required final String year,
      required final String month,
      required final String day,
      required final String resYn}) = _$CalendarEnableSelectEntityImpl;

  @override
  String get year;
  @override
  String get month;
  @override
  String get day;
  @override
  String get resYn;
  @override
  @JsonKey(ignore: true)
  _$$CalendarEnableSelectEntityImplCopyWith<_$CalendarEnableSelectEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
