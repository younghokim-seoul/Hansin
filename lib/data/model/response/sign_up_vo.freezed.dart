// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpVO _$SignUpVOFromJson(Map<String, dynamic> json) {
  return _SignUpVO.fromJson(json);
}

/// @nodoc
mixin _$SignUpVO {
  String get result => throw _privateConstructorUsedError;
  String get resultMsg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpVOCopyWith<SignUpVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpVOCopyWith<$Res> {
  factory $SignUpVOCopyWith(SignUpVO value, $Res Function(SignUpVO) then) =
      _$SignUpVOCopyWithImpl<$Res, SignUpVO>;
  @useResult
  $Res call({String result, String resultMsg});
}

/// @nodoc
class _$SignUpVOCopyWithImpl<$Res, $Val extends SignUpVO>
    implements $SignUpVOCopyWith<$Res> {
  _$SignUpVOCopyWithImpl(this._value, this._then);

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
abstract class _$$SignUpVOImplCopyWith<$Res>
    implements $SignUpVOCopyWith<$Res> {
  factory _$$SignUpVOImplCopyWith(
          _$SignUpVOImpl value, $Res Function(_$SignUpVOImpl) then) =
      __$$SignUpVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String result, String resultMsg});
}

/// @nodoc
class __$$SignUpVOImplCopyWithImpl<$Res>
    extends _$SignUpVOCopyWithImpl<$Res, _$SignUpVOImpl>
    implements _$$SignUpVOImplCopyWith<$Res> {
  __$$SignUpVOImplCopyWithImpl(
      _$SignUpVOImpl _value, $Res Function(_$SignUpVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? resultMsg = null,
  }) {
    return _then(_$SignUpVOImpl(
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
class _$SignUpVOImpl implements _SignUpVO {
  _$SignUpVOImpl({required this.result, required this.resultMsg});

  factory _$SignUpVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpVOImplFromJson(json);

  @override
  final String result;
  @override
  final String resultMsg;

  @override
  String toString() {
    return 'SignUpVO(result: $result, resultMsg: $resultMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpVOImpl &&
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
  _$$SignUpVOImplCopyWith<_$SignUpVOImpl> get copyWith =>
      __$$SignUpVOImplCopyWithImpl<_$SignUpVOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpVOImplToJson(
      this,
    );
  }
}

abstract class _SignUpVO implements SignUpVO {
  factory _SignUpVO(
      {required final String result,
      required final String resultMsg}) = _$SignUpVOImpl;

  factory _SignUpVO.fromJson(Map<String, dynamic> json) =
      _$SignUpVOImpl.fromJson;

  @override
  String get result;
  @override
  String get resultMsg;
  @override
  @JsonKey(ignore: true)
  _$$SignUpVOImplCopyWith<_$SignUpVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
