// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReservationVO _$ReservationVOFromJson(Map<String, dynamic> json) {
  return _ReservationVO.fromJson(json);
}

/// @nodoc
mixin _$ReservationVO {
  String get result => throw _privateConstructorUsedError;
  String get resultMsg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationVOCopyWith<ReservationVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationVOCopyWith<$Res> {
  factory $ReservationVOCopyWith(
          ReservationVO value, $Res Function(ReservationVO) then) =
      _$ReservationVOCopyWithImpl<$Res, ReservationVO>;
  @useResult
  $Res call({String result, String resultMsg});
}

/// @nodoc
class _$ReservationVOCopyWithImpl<$Res, $Val extends ReservationVO>
    implements $ReservationVOCopyWith<$Res> {
  _$ReservationVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? resultMsg = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      resultMsg: null == resultMsg
          ? _value.resultMsg
          : resultMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReservationVOImplCopyWith<$Res>
    implements $ReservationVOCopyWith<$Res> {
  factory _$$ReservationVOImplCopyWith(
          _$ReservationVOImpl value, $Res Function(_$ReservationVOImpl) then) =
      __$$ReservationVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String result, String resultMsg});
}

/// @nodoc
class __$$ReservationVOImplCopyWithImpl<$Res>
    extends _$ReservationVOCopyWithImpl<$Res, _$ReservationVOImpl>
    implements _$$ReservationVOImplCopyWith<$Res> {
  __$$ReservationVOImplCopyWithImpl(
      _$ReservationVOImpl _value, $Res Function(_$ReservationVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? resultMsg = null,
  }) {
    return _then(_$ReservationVOImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      resultMsg: null == resultMsg
          ? _value.resultMsg
          : resultMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationVOImpl implements _ReservationVO {
  _$ReservationVOImpl({required this.result, required this.resultMsg});

  factory _$ReservationVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationVOImplFromJson(json);

  @override
  final String result;
  @override
  final String resultMsg;

  @override
  String toString() {
    return 'ReservationVO(result: $result, resultMsg: $resultMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationVOImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.resultMsg, resultMsg) ||
                other.resultMsg == resultMsg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, resultMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationVOImplCopyWith<_$ReservationVOImpl> get copyWith =>
      __$$ReservationVOImplCopyWithImpl<_$ReservationVOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationVOImplToJson(
      this,
    );
  }
}

abstract class _ReservationVO implements ReservationVO {
  factory _ReservationVO(
      {required final String result,
      required final String resultMsg}) = _$ReservationVOImpl;

  factory _ReservationVO.fromJson(Map<String, dynamic> json) =
      _$ReservationVOImpl.fromJson;

  @override
  String get result;
  @override
  String get resultMsg;
  @override
  @JsonKey(ignore: true)
  _$$ReservationVOImplCopyWith<_$ReservationVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
