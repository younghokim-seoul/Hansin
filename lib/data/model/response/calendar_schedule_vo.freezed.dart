// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_schedule_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalendarScheduleVO _$CalendarScheduleVOFromJson(Map<String, dynamic> json) {
  return _CalendarScheduleVO.fromJson(json);
}

/// @nodoc
mixin _$CalendarScheduleVO {
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  String get resYn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarScheduleVOCopyWith<CalendarScheduleVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarScheduleVOCopyWith<$Res> {
  factory $CalendarScheduleVOCopyWith(
          CalendarScheduleVO value, $Res Function(CalendarScheduleVO) then) =
      _$CalendarScheduleVOCopyWithImpl<$Res, CalendarScheduleVO>;
  @useResult
  $Res call({int year, int month, int day, String resYn});
}

/// @nodoc
class _$CalendarScheduleVOCopyWithImpl<$Res, $Val extends CalendarScheduleVO>
    implements $CalendarScheduleVOCopyWith<$Res> {
  _$CalendarScheduleVOCopyWithImpl(this._value, this._then);

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
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      resYn: null == resYn
          ? _value.resYn
          : resYn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarScheduleVOImplCopyWith<$Res>
    implements $CalendarScheduleVOCopyWith<$Res> {
  factory _$$CalendarScheduleVOImplCopyWith(_$CalendarScheduleVOImpl value,
          $Res Function(_$CalendarScheduleVOImpl) then) =
      __$$CalendarScheduleVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, int month, int day, String resYn});
}

/// @nodoc
class __$$CalendarScheduleVOImplCopyWithImpl<$Res>
    extends _$CalendarScheduleVOCopyWithImpl<$Res, _$CalendarScheduleVOImpl>
    implements _$$CalendarScheduleVOImplCopyWith<$Res> {
  __$$CalendarScheduleVOImplCopyWithImpl(_$CalendarScheduleVOImpl _value,
      $Res Function(_$CalendarScheduleVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? day = null,
    Object? resYn = null,
  }) {
    return _then(_$CalendarScheduleVOImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      resYn: null == resYn
          ? _value.resYn
          : resYn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarScheduleVOImpl implements _CalendarScheduleVO {
  _$CalendarScheduleVOImpl(
      {required this.year,
      required this.month,
      required this.day,
      required this.resYn});

  factory _$CalendarScheduleVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarScheduleVOImplFromJson(json);

  @override
  final int year;
  @override
  final int month;
  @override
  final int day;
  @override
  final String resYn;

  @override
  String toString() {
    return 'CalendarScheduleVO(year: $year, month: $month, day: $day, resYn: $resYn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarScheduleVOImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.resYn, resYn) || other.resYn == resYn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, year, month, day, resYn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarScheduleVOImplCopyWith<_$CalendarScheduleVOImpl> get copyWith =>
      __$$CalendarScheduleVOImplCopyWithImpl<_$CalendarScheduleVOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarScheduleVOImplToJson(
      this,
    );
  }
}

abstract class _CalendarScheduleVO implements CalendarScheduleVO {
  factory _CalendarScheduleVO(
      {required final int year,
      required final int month,
      required final int day,
      required final String resYn}) = _$CalendarScheduleVOImpl;

  factory _CalendarScheduleVO.fromJson(Map<String, dynamic> json) =
      _$CalendarScheduleVOImpl.fromJson;

  @override
  int get year;
  @override
  int get month;
  @override
  int get day;
  @override
  String get resYn;
  @override
  @JsonKey(ignore: true)
  _$$CalendarScheduleVOImplCopyWith<_$CalendarScheduleVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
