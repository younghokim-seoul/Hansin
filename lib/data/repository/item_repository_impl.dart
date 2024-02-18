import 'dart:convert';

import 'package:hansin/data/api_url.dart';
import 'package:hansin/data/datasource/remote/remote_datasource.dart';
import 'package:hansin/data/model/response/content_info_vo.dart';
import 'package:hansin/data/model/response/item_info_vo.dart';
import 'package:hansin/domain/entity/content_entity.dart';
import 'package:hansin/domain/entity/stock_entity.dart';
import 'package:hansin/domain/repository/item_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ItemRepository)
class ItemRepositoryImpl implements ItemRepository {
  RemoteDataSource dataSource;

  ItemRepositoryImpl(this.dataSource);

  @override
  Future<ContentInfoEntity> getContentInfo(Map<String, dynamic> param) async {
    var res =
        await dataSource.request(HttpMethod.post, ApiUrl.getContent, param);

    var responseModel =
        ContentInfoVO.fromJson(json.decode(utf8.decode(res.bodyBytes)));

    ContentInfoEntity entity = ContentInfoEntity(
        result: responseModel.result,
        resultMsg: responseModel.resultMsg,
        contentName: responseModel.contentName,
        contentImage: responseModel.contentImage);

    return entity;
  }

  @override
  Future<List<StockEntity>> getItemInfo() async {
    var res = await dataSource.request(HttpMethod.get, ApiUrl.getItem, {});

    var entity = List<dynamic>.from(json.decode(utf8.decode(res.bodyBytes)))
        .map((e) {
          return ItemInfoVO.fromJson(e);
        })
        .map((e) => StockEntity(
            itemGbn: e.itemGbn, itemName: e.itemName, itemCnt: e.itemCnt,lastUpdateDt: e.lastUpdateDt))
        .toList();

    return entity;
  }
}
