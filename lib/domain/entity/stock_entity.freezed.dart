// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockEntity _$StockEntityFromJson(Map<String, dynamic> json) {
  return _StockEntity.fromJson(json);
}

/// @nodoc
mixin _$StockEntity {
  String get itemGbn => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  int get itemCnt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockEntityCopyWith<StockEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockEntityCopyWith<$Res> {
  factory $StockEntityCopyWith(
          StockEntity value, $Res Function(StockEntity) then) =
      _$StockEntityCopyWithImpl<$Res, StockEntity>;
  @useResult
  $Res call({String itemGbn, String itemName, int itemCnt});
}

/// @nodoc
class _$StockEntityCopyWithImpl<$Res, $Val extends StockEntity>
    implements $StockEntityCopyWith<$Res> {
  _$StockEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$StockEntityImplCopyWith<$Res>
    implements $StockEntityCopyWith<$Res> {
  factory _$$StockEntityImplCopyWith(
          _$StockEntityImpl value, $Res Function(_$StockEntityImpl) then) =
      __$$StockEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String itemGbn, String itemName, int itemCnt});
}

/// @nodoc
class __$$StockEntityImplCopyWithImpl<$Res>
    extends _$StockEntityCopyWithImpl<$Res, _$StockEntityImpl>
    implements _$$StockEntityImplCopyWith<$Res> {
  __$$StockEntityImplCopyWithImpl(
      _$StockEntityImpl _value, $Res Function(_$StockEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemGbn = null,
    Object? itemName = null,
    Object? itemCnt = null,
  }) {
    return _then(_$StockEntityImpl(
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
class _$StockEntityImpl implements _StockEntity {
  _$StockEntityImpl(
      {required this.itemGbn, required this.itemName, required this.itemCnt});

  factory _$StockEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockEntityImplFromJson(json);

  @override
  final String itemGbn;
  @override
  final String itemName;
  @override
  final int itemCnt;

  @override
  String toString() {
    return 'StockEntity(itemGbn: $itemGbn, itemName: $itemName, itemCnt: $itemCnt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockEntityImpl &&
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
  _$$StockEntityImplCopyWith<_$StockEntityImpl> get copyWith =>
      __$$StockEntityImplCopyWithImpl<_$StockEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockEntityImplToJson(
      this,
    );
  }
}

abstract class _StockEntity implements StockEntity {
  factory _StockEntity(
      {required final String itemGbn,
      required final String itemName,
      required final int itemCnt}) = _$StockEntityImpl;

  factory _StockEntity.fromJson(Map<String, dynamic> json) =
      _$StockEntityImpl.fromJson;

  @override
  String get itemGbn;
  @override
  String get itemName;
  @override
  int get itemCnt;
  @override
  @JsonKey(ignore: true)
  _$$StockEntityImplCopyWith<_$StockEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
