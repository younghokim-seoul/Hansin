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
  String get result => throw _privateConstructorUsedError;
  List<CalendarScheduleVO> get schedule => throw _privateConstructorUsedError;
  String get resultMsg => throw _privateConstructorUsedError;

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
      {String result, List<CalendarScheduleVO> schedule, String resultMsg});
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
    Object? result = null,
    Object? schedule = null,
    Object? resultMsg = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<CalendarScheduleVO>,
      resultMsg: null == resultMsg
          ? _value.resultMsg
          : resultMsg // ignore: cast_nullable_to_non_nullable
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
      {String result, List<CalendarScheduleVO> schedule, String resultMsg});
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
    Object? result = null,
    Object? schedule = null,
    Object? resultMsg = null,
  }) {
    return _then(_$CalendarInfoVOImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<CalendarScheduleVO>,
      resultMsg: null == resultMsg
          ? _value.resultMsg
          : resultMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarInfoVOImpl implements _CalendarInfoVO {
  _$CalendarInfoVOImpl(
      {required this.result,
      required final List<CalendarScheduleVO> schedule,
      required this.resultMsg})
      : _schedule = schedule;

  factory _$CalendarInfoVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarInfoVOImplFromJson(json);

  @override
  final String result;
  final List<CalendarScheduleVO> _schedule;
  @override
  List<CalendarScheduleVO> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  final String resultMsg;

  @override
  String toString() {
    return 'CalendarInfoVO(result: $result, schedule: $schedule, resultMsg: $resultMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarInfoVOImpl &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule) &&
            (identical(other.resultMsg, resultMsg) ||
                other.resultMsg == resultMsg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result,
      const DeepCollectionEquality().hash(_schedule), resultMsg);

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
      {required final String result,
      required final List<CalendarScheduleVO> schedule,
      required final String resultMsg}) = _$CalendarInfoVOImpl;

  factory _CalendarInfoVO.fromJson(Map<String, dynamic> json) =
      _$CalendarInfoVOImpl.fromJson;

  @override
  String get result;
  @override
  List<CalendarScheduleVO> get schedule;
  @override
  String get resultMsg;
  @override
  @JsonKey(ignore: true)
  _$$CalendarInfoVOImplCopyWith<_$CalendarInfoVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
