// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContentInfoEntity {
  String get result => throw _privateConstructorUsedError;
  String get resultMsg => throw _privateConstructorUsedError;
  String get contentName => throw _privateConstructorUsedError;
  String get contentImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentInfoEntityCopyWith<ContentInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentInfoEntityCopyWith<$Res> {
  factory $ContentInfoEntityCopyWith(
          ContentInfoEntity value, $Res Function(ContentInfoEntity) then) =
      _$ContentInfoEntityCopyWithImpl<$Res, ContentInfoEntity>;
  @useResult
  $Res call(
      {String result,
      String resultMsg,
      String contentName,
      String contentImage});
}

/// @nodoc
class _$ContentInfoEntityCopyWithImpl<$Res, $Val extends ContentInfoEntity>
    implements $ContentInfoEntityCopyWith<$Res> {
  _$ContentInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? resultMsg = null,
    Object? contentName = null,
    Object? contentImage = null,
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
      contentName: null == contentName
          ? _value.contentName
          : contentName // ignore: cast_nullable_to_non_nullable
              as String,
      contentImage: null == contentImage
          ? _value.contentImage
          : contentImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentInfoEntityImplCopyWith<$Res>
    implements $ContentInfoEntityCopyWith<$Res> {
  factory _$$ContentInfoEntityImplCopyWith(_$ContentInfoEntityImpl value,
          $Res Function(_$ContentInfoEntityImpl) then) =
      __$$ContentInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String result,
      String resultMsg,
      String contentName,
      String contentImage});
}

/// @nodoc
class __$$ContentInfoEntityImplCopyWithImpl<$Res>
    extends _$ContentInfoEntityCopyWithImpl<$Res, _$ContentInfoEntityImpl>
    implements _$$ContentInfoEntityImplCopyWith<$Res> {
  __$$ContentInfoEntityImplCopyWithImpl(_$ContentInfoEntityImpl _value,
      $Res Function(_$ContentInfoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? resultMsg = null,
    Object? contentName = null,
    Object? contentImage = null,
  }) {
    return _then(_$ContentInfoEntityImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      resultMsg: null == resultMsg
          ? _value.resultMsg
          : resultMsg // ignore: cast_nullable_to_non_nullable
              as String,
      contentName: null == contentName
          ? _value.contentName
          : contentName // ignore: cast_nullable_to_non_nullable
              as String,
      contentImage: null == contentImage
          ? _value.contentImage
          : contentImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContentInfoEntityImpl implements _ContentInfoEntity {
  _$ContentInfoEntityImpl(
      {required this.result,
      required this.resultMsg,
      required this.contentName,
      required this.contentImage});

  @override
  final String result;
  @override
  final String resultMsg;
  @override
  final String contentName;
  @override
  final String contentImage;

  @override
  String toString() {
    return 'ContentInfoEntity(result: $result, resultMsg: $resultMsg, contentName: $contentName, contentImage: $contentImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentInfoEntityImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.resultMsg, resultMsg) ||
                other.resultMsg == resultMsg) &&
            (identical(other.contentName, contentName) ||
                other.contentName == contentName) &&
            (identical(other.contentImage, contentImage) ||
                other.contentImage == contentImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, result, resultMsg, contentName, contentImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentInfoEntityImplCopyWith<_$ContentInfoEntityImpl> get copyWith =>
      __$$ContentInfoEntityImplCopyWithImpl<_$ContentInfoEntityImpl>(
          this, _$identity);
}

abstract class _ContentInfoEntity implements ContentInfoEntity {
  factory _ContentInfoEntity(
      {required final String result,
      required final String resultMsg,
      required final String contentName,
      required final String contentImage}) = _$ContentInfoEntityImpl;

  @override
  String get result;
  @override
  String get resultMsg;
  @override
  String get contentName;
  @override
  String get contentImage;
  @override
  @JsonKey(ignore: true)
  _$$ContentInfoEntityImplCopyWith<_$ContentInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
