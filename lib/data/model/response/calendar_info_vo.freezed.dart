// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_info_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalendarInfoVO _$CalendarInfoVOFromJson(Map<String, dynamic> json) {
  return _CalendarInfoVO.fromJson(json);
}

/// @nodoc
mixin _$CalendarInfoVO {
  String get year => throw _privateConstructorUsedError;
  String get month => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  String get amResYn => throw _privateConstructorUsedError;
  String get pmResYn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarInfoVOCopyWith<CalendarInfoVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarInfoVOCopyWith<$Res> {
  factory $CalendarInfoVOCopyWith(
          CalendarInfoVO value, $Res Function(CalendarInfoVO) then) =
      _$CalendarInfoVOCopyWithImpl<$Res, CalendarInfoVO>;
  @useResult
  $Res call(
      {String year, String month, String day, String amResYn, String pmResYn});
}

/// @nodoc
class _$CalendarInfoVOCopyWithImpl<$Res, $Val extends CalendarInfoVO>
    implements $CalendarInfoVOCopyWith<$Res> {
  _$CalendarInfoVOCopyWithImpl(this._value, this._then);

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
    Object? amResYn = null,
    Object? pmResYn = null,
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
      amResYn: null == amResYn
          ? _value.amResYn
          : amResYn // ignore: cast_nullable_to_non_nullable
              as String,
      pmResYn: null == pmResYn
          ? _value.pmResYn
          : pmResYn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarInfoVOImplCopyWith<$Res>
    implements $CalendarInfoVOCopyWith<$Res> {
  factory _$$CalendarInfoVOImplCopyWith(_$CalendarInfoVOImpl value,
          $Res Function(_$CalendarInfoVOImpl) then) =
      __$$CalendarInfoVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String year, String month, String day, String amResYn, String pmResYn});
}

/// @nodoc
class __$$CalendarInfoVOImplCopyWithImpl<$Res>
    extends _$CalendarInfoVOCopyWithImpl<$Res, _$CalendarInfoVOImpl>
    implements _$$CalendarInfoVOImplCopyWith<$Res> {
  __$$CalendarInfoVOImplCopyWithImpl(
      _$CalendarInfoVOImpl _value, $Res Function(_$CalendarInfoVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? day = null,
    Object? amResYn = null,
    Object? pmResYn = null,
  }) {
    return _then(_$CalendarInfoVOImpl(
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
      amResYn: null == amResYn
          ? _value.amResYn
          : amResYn // ignore: cast_nullable_to_non_nullable
              as String,
      pmResYn: null == pmResYn
          ? _value.pmResYn
          : pmResYn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarInfoVOImpl implements _CalendarInfoVO {
  _$CalendarInfoVOImpl(
      {required this.year,
      required this.month,
      required this.day,
      required this.amResYn,
      required this.pmResYn});

  factory _$CalendarInfoVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarInfoVOImplFromJson(json);

  @override
  final String year;
  @override
  final String month;
  @override
  final String day;
  @override
  final String amResYn;
  @override
  final String pmResYn;

  @override
  String toString() {
    return 'CalendarInfoVO(year: $year, month: $month, day: $day, amResYn: $amResYn, pmResYn: $pmResYn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarInfoVOImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.amResYn, amResYn) || other.amResYn == amResYn) &&
            (identical(other.pmResYn, pmResYn) || other.pmResYn == pmResYn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, year, month, day, amResYn, pmResYn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarInfoVOImplCopyWith<_$CalendarInfoVOImpl> get copyWith =>
      __$$CalendarInfoVOImplCopyWithImpl<_$CalendarInfoVOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarInfoVOImplToJson(
      this,
    );
  }
}

abstract class _CalendarInfoVO implements CalendarInfoVO {
  factory _CalendarInfoVO(
      {required final String year,
      required final String month,
      required final String day,
      required final String amResYn,
      required final String pmResYn}) = _$CalendarInfoVOImpl;

  factory _CalendarInfoVO.fromJson(Map<String, dynamic> json) =
      _$CalendarInfoVOImpl.fromJson;

  @override
  String get year;
  @override
  String get month;
  @override
  String get day;
  @override
  String get amResYn;
  @override
  String get pmResYn;
  @override
  @JsonKey(ignore: true)
  _$$CalendarInfoVOImplCopyWith<_$CalendarInfoVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
