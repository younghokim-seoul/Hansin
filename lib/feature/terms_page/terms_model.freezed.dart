// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TermsModel {
  String get asset => throw _privateConstructorUsedError;
  String get filename => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TermsModelCopyWith<TermsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsModelCopyWith<$Res> {
  factory $TermsModelCopyWith(
          TermsModel value, $Res Function(TermsModel) then) =
      _$TermsModelCopyWithImpl<$Res, TermsModel>;
  @useResult
  $Res call({String asset, String filename});
}

/// @nodoc
class _$TermsModelCopyWithImpl<$Res, $Val extends TermsModel>
    implements $TermsModelCopyWith<$Res> {
  _$TermsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asset = null,
    Object? filename = null,
  }) {
    return _then(_value.copyWith(
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TermsModelImplCopyWith<$Res>
    implements $TermsModelCopyWith<$Res> {
  factory _$$TermsModelImplCopyWith(
          _$TermsModelImpl value, $Res Function(_$TermsModelImpl) then) =
      __$$TermsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String asset, String filename});
}

/// @nodoc
class __$$TermsModelImplCopyWithImpl<$Res>
    extends _$TermsModelCopyWithImpl<$Res, _$TermsModelImpl>
    implements _$$TermsModelImplCopyWith<$Res> {
  __$$TermsModelImplCopyWithImpl(
      _$TermsModelImpl _value, $Res Function(_$TermsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asset = null,
    Object? filename = null,
  }) {
    return _then(_$TermsModelImpl(
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TermsModelImpl implements _TermsModel {
  _$TermsModelImpl({required this.asset, required this.filename});

  @override
  final String asset;
  @override
  final String filename;

  @override
  String toString() {
    return 'TermsModel(asset: $asset, filename: $filename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsModelImpl &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asset, filename);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsModelImplCopyWith<_$TermsModelImpl> get copyWith =>
      __$$TermsModelImplCopyWithImpl<_$TermsModelImpl>(this, _$identity);
}

abstract class _TermsModel implements TermsModel {
  factory _TermsModel(
      {required final String asset,
      required final String filename}) = _$TermsModelImpl;

  @override
  String get asset;
  @override
  String get filename;
  @override
  @JsonKey(ignore: true)
  _$$TermsModelImplCopyWith<_$TermsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
