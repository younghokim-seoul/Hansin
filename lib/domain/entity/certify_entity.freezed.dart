// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certify_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CertifyEntity {
  int get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CertifyEntityCopyWith<CertifyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertifyEntityCopyWith<$Res> {
  factory $CertifyEntityCopyWith(
          CertifyEntity value, $Res Function(CertifyEntity) then) =
      _$CertifyEntityCopyWithImpl<$Res, CertifyEntity>;
  @useResult
  $Res call({int code, String name, String gender, String phone});
}

/// @nodoc
class _$CertifyEntityCopyWithImpl<$Res, $Val extends CertifyEntity>
    implements $CertifyEntityCopyWith<$Res> {
  _$CertifyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? gender = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CertifyEntityImplCopyWith<$Res>
    implements $CertifyEntityCopyWith<$Res> {
  factory _$$CertifyEntityImplCopyWith(
          _$CertifyEntityImpl value, $Res Function(_$CertifyEntityImpl) then) =
      __$$CertifyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String name, String gender, String phone});
}

/// @nodoc
class __$$CertifyEntityImplCopyWithImpl<$Res>
    extends _$CertifyEntityCopyWithImpl<$Res, _$CertifyEntityImpl>
    implements _$$CertifyEntityImplCopyWith<$Res> {
  __$$CertifyEntityImplCopyWithImpl(
      _$CertifyEntityImpl _value, $Res Function(_$CertifyEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? gender = null,
    Object? phone = null,
  }) {
    return _then(_$CertifyEntityImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CertifyEntityImpl implements _CertifyEntity {
  _$CertifyEntityImpl(
      {required this.code,
      required this.name,
      required this.gender,
      required this.phone});

  @override
  final int code;
  @override
  final String name;
  @override
  final String gender;
  @override
  final String phone;

  @override
  String toString() {
    return 'CertifyEntity(code: $code, name: $name, gender: $gender, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertifyEntityImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, name, gender, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CertifyEntityImplCopyWith<_$CertifyEntityImpl> get copyWith =>
      __$$CertifyEntityImplCopyWithImpl<_$CertifyEntityImpl>(this, _$identity);
}

abstract class _CertifyEntity implements CertifyEntity {
  factory _CertifyEntity(
      {required final int code,
      required final String name,
      required final String gender,
      required final String phone}) = _$CertifyEntityImpl;

  @override
  int get code;
  @override
  String get name;
  @override
  String get gender;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$CertifyEntityImplCopyWith<_$CertifyEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
