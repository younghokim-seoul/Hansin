// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_detail_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReservationDetailVO _$ReservationDetailVOFromJson(Map<String, dynamic> json) {
  return _ReservationDetailVO.fromJson(json);
}

/// @nodoc
mixin _$ReservationDetailVO {
  String get year => throw _privateConstructorUsedError;
  String get month => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  String get amResYn => throw _privateConstructorUsedError;
  String get pmResYn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationDetailVOCopyWith<ReservationDetailVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationDetailVOCopyWith<$Res> {
  factory $ReservationDetailVOCopyWith(
          ReservationDetailVO value, $Res Function(ReservationDetailVO) then) =
      _$ReservationDetailVOCopyWithImpl<$Res, ReservationDetailVO>;
  @useResult
  $Res call(
      {String year, String month, String day, String amResYn, String pmResYn});
}

/// @nodoc
class _$ReservationDetailVOCopyWithImpl<$Res, $Val extends ReservationDetailVO>
    implements $ReservationDetailVOCopyWith<$Res> {
  _$ReservationDetailVOCopyWithImpl(this._value, this._then);

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
abstract class _$$ReservationDetailVOImplCopyWith<$Res>
    implements $ReservationDetailVOCopyWith<$Res> {
  factory _$$ReservationDetailVOImplCopyWith(_$ReservationDetailVOImpl value,
          $Res Function(_$ReservationDetailVOImpl) then) =
      __$$ReservationDetailVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String year, String month, String day, String amResYn, String pmResYn});
}

/// @nodoc
class __$$ReservationDetailVOImplCopyWithImpl<$Res>
    extends _$ReservationDetailVOCopyWithImpl<$Res, _$ReservationDetailVOImpl>
    implements _$$ReservationDetailVOImplCopyWith<$Res> {
  __$$ReservationDetailVOImplCopyWithImpl(_$ReservationDetailVOImpl _value,
      $Res Function(_$ReservationDetailVOImpl) _then)
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
    return _then(_$ReservationDetailVOImpl(
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
class _$ReservationDetailVOImpl implements _ReservationDetailVO {
  _$ReservationDetailVOImpl(
      {required this.year,
      required this.month,
      required this.day,
      required this.amResYn,
      required this.pmResYn});

  factory _$ReservationDetailVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationDetailVOImplFromJson(json);

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
    return 'ReservationDetailVO(year: $year, month: $month, day: $day, amResYn: $amResYn, pmResYn: $pmResYn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationDetailVOImpl &&
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
  _$$ReservationDetailVOImplCopyWith<_$ReservationDetailVOImpl> get copyWith =>
      __$$ReservationDetailVOImplCopyWithImpl<_$ReservationDetailVOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationDetailVOImplToJson(
      this,
    );
  }
}

abstract class _ReservationDetailVO implements ReservationDetailVO {
  factory _ReservationDetailVO(
      {required final String year,
      required final String month,
      required final String day,
      required final String amResYn,
      required final String pmResYn}) = _$ReservationDetailVOImpl;

  factory _ReservationDetailVO.fromJson(Map<String, dynamic> json) =
      _$ReservationDetailVOImpl.fromJson;

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
  _$$ReservationDetailVOImplCopyWith<_$ReservationDetailVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
