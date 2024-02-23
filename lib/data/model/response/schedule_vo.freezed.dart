// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleVO _$ScheduleVOFromJson(Map<String, dynamic> json) {
  return _ScheduleVO.fromJson(json);
}

/// @nodoc
mixin _$ScheduleVO {
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  String get pmResYn => throw _privateConstructorUsedError;
  String get amResYn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleVOCopyWith<ScheduleVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleVOCopyWith<$Res> {
  factory $ScheduleVOCopyWith(
          ScheduleVO value, $Res Function(ScheduleVO) then) =
      _$ScheduleVOCopyWithImpl<$Res, ScheduleVO>;
  @useResult
  $Res call({int year, int month, int day, String pmResYn, String amResYn});
}

/// @nodoc
class _$ScheduleVOCopyWithImpl<$Res, $Val extends ScheduleVO>
    implements $ScheduleVOCopyWith<$Res> {
  _$ScheduleVOCopyWithImpl(this._value, this._then);

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
    Object? pmResYn = null,
    Object? amResYn = null,
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
      pmResYn: null == pmResYn
          ? _value.pmResYn
          : pmResYn // ignore: cast_nullable_to_non_nullable
              as String,
      amResYn: null == amResYn
          ? _value.amResYn
          : amResYn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleVOImplCopyWith<$Res>
    implements $ScheduleVOCopyWith<$Res> {
  factory _$$ScheduleVOImplCopyWith(
          _$ScheduleVOImpl value, $Res Function(_$ScheduleVOImpl) then) =
      __$$ScheduleVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, int month, int day, String pmResYn, String amResYn});
}

/// @nodoc
class __$$ScheduleVOImplCopyWithImpl<$Res>
    extends _$ScheduleVOCopyWithImpl<$Res, _$ScheduleVOImpl>
    implements _$$ScheduleVOImplCopyWith<$Res> {
  __$$ScheduleVOImplCopyWithImpl(
      _$ScheduleVOImpl _value, $Res Function(_$ScheduleVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? day = null,
    Object? pmResYn = null,
    Object? amResYn = null,
  }) {
    return _then(_$ScheduleVOImpl(
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
      pmResYn: null == pmResYn
          ? _value.pmResYn
          : pmResYn // ignore: cast_nullable_to_non_nullable
              as String,
      amResYn: null == amResYn
          ? _value.amResYn
          : amResYn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleVOImpl implements _ScheduleVO {
  _$ScheduleVOImpl(
      {required this.year,
      required this.month,
      required this.day,
      required this.pmResYn,
      required this.amResYn});

  factory _$ScheduleVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleVOImplFromJson(json);

  @override
  final int year;
  @override
  final int month;
  @override
  final int day;
  @override
  final String pmResYn;
  @override
  final String amResYn;

  @override
  String toString() {
    return 'ScheduleVO(year: $year, month: $month, day: $day, pmResYn: $pmResYn, amResYn: $amResYn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleVOImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.pmResYn, pmResYn) || other.pmResYn == pmResYn) &&
            (identical(other.amResYn, amResYn) || other.amResYn == amResYn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, year, month, day, pmResYn, amResYn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleVOImplCopyWith<_$ScheduleVOImpl> get copyWith =>
      __$$ScheduleVOImplCopyWithImpl<_$ScheduleVOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleVOImplToJson(
      this,
    );
  }
}

abstract class _ScheduleVO implements ScheduleVO {
  factory _ScheduleVO(
      {required final int year,
      required final int month,
      required final int day,
      required final String pmResYn,
      required final String amResYn}) = _$ScheduleVOImpl;

  factory _ScheduleVO.fromJson(Map<String, dynamic> json) =
      _$ScheduleVOImpl.fromJson;

  @override
  int get year;
  @override
  int get month;
  @override
  int get day;
  @override
  String get pmResYn;
  @override
  String get amResYn;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleVOImplCopyWith<_$ScheduleVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
