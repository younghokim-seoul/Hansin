import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_entity.freezed.dart';
part 'stock_entity.g.dart';
@freezed
class StockEntity with _$StockEntity{
  factory StockEntity({
    required String itemGbn,
    required String itemName,
    required int itemCnt,
  }) = _StockEntity;

  factory StockEntity.fromJson(Map<String,dynamic> json) => _$StockEntityFromJson(json);

}
