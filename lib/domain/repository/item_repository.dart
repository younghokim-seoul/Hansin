import 'package:hansin/domain/entity/content_entity.dart';
import 'package:hansin/domain/entity/stock_entity.dart';

abstract class ItemRepository {
  Future<ContentInfoEntity> getContentInfo(Map<String, dynamic> param);
  Future<List<StockEntity>> getItemInfo();
  Future<List<StockEntity>> getRestCalendarDetail(Map<String, dynamic> param);
}
