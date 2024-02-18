// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginVO _$LoginVOFromJson(Map<String, dynamic> json) {
  return _LoginVO.fromJson(json);
}

/// @nodoc
mixin _$LoginVO {
  String get result => throw _privateConstructorUsedError;
  String get resultMsg => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get userCompanyName => throw _privateConstructorUsedError;
  String get userPhone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginVOCopyWith<LoginVO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginVOCopyWith<$Res> {
  factory $LoginVOCopyWith(LoginVO value, $Res Function(LoginVO) then) =
      _$LoginVOCopyWithImpl<$Res, LoginVO>;
  @useResult
  $Res call(
      {String result,
      String resultMsg,
      String userId,
      String userName,
      String userCompanyName,
      String userPhone});
}

/// @nodoc
class _$LoginVOCopyWithImpl<$Res, $Val extends LoginVO>
    implements $LoginVOCopyWith<$Res> {
  _$LoginVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? resultMsg = null,
    Object? userId = null,
    Object? userName = null,
    Object? userCompanyName = null,
    Object? userPhone = null,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userCompanyName: null == userCompanyName
          ? _value.userCompanyName
          : userCompanyName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: null == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginVOImplCopyWith<$Res> implements $LoginVOCopyWith<$Res> {
  factory _$$LoginVOImplCopyWith(
          _$LoginVOImpl value, $Res Function(_$LoginVOImpl) then) =
      __$$LoginVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String result,
      String resultMsg,
      String userId,
      String userName,
      String userCompanyName,
      String userPhone});
}

/// @nodoc
class __$$LoginVOImplCopyWithImpl<$Res>
    extends _$LoginVOCopyWithImpl<$Res, _$LoginVOImpl>
    implements _$$LoginVOImplCopyWith<$Res> {
  __$$LoginVOImplCopyWithImpl(
      _$LoginVOImpl _value, $Res Function(_$LoginVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? resultMsg = null,
    Object? userId = null,
    Object? userName = null,
    Object? userCompanyName = null,
    Object? userPhone = null,
  }) {
    return _then(_$LoginVOImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      resultMsg: null == resultMsg
          ? _value.resultMsg
          : resultMsg // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userCompanyName: null == userCompanyName
          ? _value.userCompanyName
          : userCompanyName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: null == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginVOImpl implements _LoginVO {
  _$LoginVOImpl(
      {required this.result,
      required this.resultMsg,
      required this.userId,
      required this.userName,
      required this.userCompanyName,
      required this.userPhone});

  factory _$LoginVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginVOImplFromJson(json);

  @override
  final String result;
  @override
  final String resultMsg;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String userCompanyName;
  @override
  final String userPhone;

  @override
  String toString() {
    return 'LoginVO(result: $result, resultMsg: $resultMsg, userId: $userId, userName: $userName, userCompanyName: $userCompanyName, userPhone: $userPhone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginVOImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.resultMsg, resultMsg) ||
                other.resultMsg == resultMsg) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userCompanyName, userCompanyName) ||
                other.userCompanyName == userCompanyName) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, resultMsg, userId,
      userName, userCompanyName, userPhone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginVOImplCopyWith<_$LoginVOImpl> get copyWith =>
      __$$LoginVOImplCopyWithImpl<_$LoginVOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginVOImplToJson(
      this,
    );
  }
}

abstract class _LoginVO implements LoginVO {
  factory _LoginVO(
      {required final String result,
      required final String resultMsg,
      required final String userId,
      required final String userName,
      required final String userCompanyName,
      required final String userPhone}) = _$LoginVOImpl;

  factory _LoginVO.fromJson(Map<String, dynamic> json) = _$LoginVOImpl.fromJson;

  @override
  String get result;
  @override
  String get resultMsg;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String get userCompanyName;
  @override
  String get userPhone;
  @override
  @JsonKey(ignore: true)
  _$$LoginVOImplCopyWith<_$LoginVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
