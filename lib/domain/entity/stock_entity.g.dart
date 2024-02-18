// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockEntityImpl _$$StockEntityImplFromJson(Map<String, dynamic> json) =>
    _$StockEntityImpl(
      itemGbn: json['itemGbn'] as String,
      itemName: json['itemName'] as String,
      itemCnt: json['itemCnt'] as int,
      lastUpdateDt: json['lastUpdateDt'] as String,
    );

Map<String, dynamic> _$$StockEntityImplToJson(_$StockEntityImpl instance) =>
    <String, dynamic>{
      'itemGbn': instance.itemGbn,
      'itemName': instance.itemName,
      'itemCnt': instance.itemCnt,
      'lastUpdateDt': instance.lastUpdateDt,
    };
