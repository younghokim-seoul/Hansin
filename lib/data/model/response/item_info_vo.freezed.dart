// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_info_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemInfoVO _$ItemInfoVOFromJson(Map<String, dynamic> json) {
  return _ItemInfoVO.fromJson(json);
}

/// @nodoc
mixin _$ItemInfoVO {
  String get itemGbn => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  int get itemCnt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemInfoVOCopyWith<ItemInfoVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemInfoVOCopyWith<$Res> {
  factory $ItemInfoVOCopyWith(
          ItemInfoVO value, $Res Function(ItemInfoVO) then) =
      _$ItemInfoVOCopyWithImpl<$Res, ItemInfoVO>;
  @useResult
  $Res call({String itemGbn, String itemName, int itemCnt});
}

/// @nodoc
class _$ItemInfoVOCopyWithImpl<$Res, $Val extends ItemInfoVO>
    implements $ItemInfoVOCopyWith<$Res> {
  _$ItemInfoVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemGbn = null,
    Object? itemName = null,
    Object? itemCnt = null,
  }) {
    return _then(_value.copyWith(
      itemGbn: null == itemGbn
          ? _value.itemGbn
          : itemGbn // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemCnt: null == itemCnt
          ? _value.itemCnt
          : itemCnt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemInfoVOImplCopyWith<$Res>
    implements $ItemInfoVOCopyWith<$Res> {
  factory _$$ItemInfoVOImplCopyWith(
          _$ItemInfoVOImpl value, $Res Function(_$ItemInfoVOImpl) then) =
      __$$ItemInfoVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String itemGbn, String itemName, int itemCnt});
}

/// @nodoc
class __$$ItemInfoVOImplCopyWithImpl<$Res>
    extends _$ItemInfoVOCopyWithImpl<$Res, _$ItemInfoVOImpl>
    implements _$$ItemInfoVOImplCopyWith<$Res> {
  __$$ItemInfoVOImplCopyWithImpl(
      _$ItemInfoVOImpl _value, $Res Function(_$ItemInfoVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemGbn = null,
    Object? itemName = null,
    Object? itemCnt = null,
  }) {
    return _then(_$ItemInfoVOImpl(
      itemGbn: null == itemGbn
          ? _value.itemGbn
          : itemGbn // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemCnt: null == itemCnt
          ? _value.itemCnt
          : itemCnt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemInfoVOImpl implements _ItemInfoVO {
  _$ItemInfoVOImpl(
      {required this.itemGbn, required this.itemName, required this.itemCnt});

  factory _$ItemInfoVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemInfoVOImplFromJson(json);

  @override
  final String itemGbn;
  @override
  final String itemName;
  @override
  final int itemCnt;

  @override
  String toString() {
    return 'ItemInfoVO(itemGbn: $itemGbn, itemName: $itemName, itemCnt: $itemCnt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemInfoVOImpl &&
            (identical(other.itemGbn, itemGbn) || other.itemGbn == itemGbn) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.itemCnt, itemCnt) || other.itemCnt == itemCnt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, itemGbn, itemName, itemCnt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemInfoVOImplCopyWith<_$ItemInfoVOImpl> get copyWith =>
      __$$ItemInfoVOImplCopyWithImpl<_$ItemInfoVOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemInfoVOImplToJson(
      this,
    );
  }
}

abstract class _ItemInfoVO implements ItemInfoVO {
  factory _ItemInfoVO(
      {required final String itemGbn,
      required final String itemName,
      required final int itemCnt}) = _$ItemInfoVOImpl;

  factory _ItemInfoVO.fromJson(Map<String, dynamic> json) =
      _$ItemInfoVOImpl.fromJson;

  @override
  String get itemGbn;
  @override
  String get itemName;
  @override
  int get itemCnt;
  @override
  @JsonKey(ignore: true)
  _$$ItemInfoVOImplCopyWith<_$ItemInfoVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
