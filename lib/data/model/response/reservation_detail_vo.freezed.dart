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
  String get result => throw _privateConstructorUsedError;
  ScheduleVO? get schedule => throw _privateConstructorUsedError;
  String get resultMsg => throw _privateConstructorUsedError;

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
  $Res call({String result, ScheduleVO? schedule, String resultMsg});

  $ScheduleVOCopyWith<$Res>? get schedule;
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
    Object? result = null,
    Object? schedule = freezed,
    Object? resultMsg = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleVO?,
      resultMsg: null == resultMsg
          ? _value.resultMsg
          : resultMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleVOCopyWith<$Res>? get schedule {
    if (_value.schedule == null) {
      return null;
    }

    return $ScheduleVOCopyWith<$Res>(_value.schedule!, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
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
  $Res call({String result, ScheduleVO? schedule, String resultMsg});

  @override
  $ScheduleVOCopyWith<$Res>? get schedule;
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
    Object? result = null,
    Object? schedule = freezed,
    Object? resultMsg = null,
  }) {
    return _then(_$ReservationDetailVOImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleVO?,
      resultMsg: null == resultMsg
          ? _value.resultMsg
          : resultMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationDetailVOImpl implements _ReservationDetailVO {
  _$ReservationDetailVOImpl(
      {required this.result, required this.schedule, required this.resultMsg});

  factory _$ReservationDetailVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationDetailVOImplFromJson(json);

  @override
  final String result;
  @override
  final ScheduleVO? schedule;
  @override
  final String resultMsg;

  @override
  String toString() {
    return 'ReservationDetailVO(result: $result, schedule: $schedule, resultMsg: $resultMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationDetailVOImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.resultMsg, resultMsg) ||
                other.resultMsg == resultMsg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, schedule, resultMsg);

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
      {required final String result,
      required final ScheduleVO? schedule,
      required final String resultMsg}) = _$ReservationDetailVOImpl;

  factory _ReservationDetailVO.fromJson(Map<String, dynamic> json) =
      _$ReservationDetailVOImpl.fromJson;

  @override
  String get result;
  @override
  ScheduleVO? get schedule;
  @override
  String get resultMsg;
  @override
  @JsonKey(ignore: true)
  _$$ReservationDetailVOImplCopyWith<_$ReservationDetailVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
