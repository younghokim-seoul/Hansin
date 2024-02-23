import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:hansin/data/api_url.dart';
import 'package:hansin/data/datasource/remote/remote_datasource.dart';
import 'package:hansin/data/model/response/calendar_info_vo.dart';
import 'package:hansin/data/model/response/content_info_vo.dart';
import 'package:hansin/data/model/response/item_info_vo.dart';
import 'package:hansin/data/model/response/login_vo.dart';
import 'package:hansin/data/model/response/reservation_detail_vo.dart';
import 'package:hansin/data/model/response/reservation_vo.dart';
import 'package:hansin/data/model/response/sign_up_vo.dart';
import 'package:hansin/domain/entity/calendar_detail_entity.dart';
import 'package:hansin/domain/entity/calendar_enable_select_entity.dart';
import 'package:hansin/domain/entity/content_entity.dart';
import 'package:hansin/domain/entity/stock_entity.dart';
import 'package:hansin/domain/repository/item_repository.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/extension/value_extension.dart';
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
    var res = await dataSource.request(HttpMethod.get, ApiUrl.getItemInfo, {});

    var entity = List<dynamic>.from(json.decode(utf8.decode(res.bodyBytes)))
        .map((e) {
          return ItemInfoVO.fromJson(e);
        })
        .map((e) => StockEntity(
            itemGbn: e.itemGbn,
            itemName: e.itemName,
            itemCnt: e.itemCnt,
            lastUpdateDt: e.lastUpdateDt))
        .toList();

    return entity;
  }

  @override
  Future<CalendarDetailEntity> getRestCalendarDetail(
      Map<String, dynamic> param) async {
    var res = await dataSource.request(
        HttpMethod.post, ApiUrl.getRestCalendarDetail, param);

    var responseModel =
        ReservationDetailVO.fromJson(json.decode(utf8.decode(res.bodyBytes)));

    Log.d(":::responseModel.scheduleVO ${responseModel.schedule}");
    throwIf(responseModel.schedule.isNullOrEmpty, Exception('scheduleVO null'));

    final entity = CalendarDetailEntity(
        year: responseModel.schedule!.year.toString(),
        month: responseModel.schedule!.month.toString(),
        day: responseModel.schedule!.day.toString(),
        amResYn: responseModel.schedule!.amResYn,
        pmResYn: responseModel.schedule!.pmResYn);

    return entity;
  }

  @override
  Future<SignUpVO> createUser(Map<String, dynamic> param) async {
    var res = await dataSource.request(HttpMethod.post, ApiUrl.signUp, param);

    var responseModel =
        SignUpVO.fromJson(json.decode(utf8.decode(res.bodyBytes)));

    return responseModel;
  }

  @override
  Future<List<CalendarEnableSelectEntity>> getRestCalendar() async {
    var res =
        await dataSource.request(HttpMethod.get, ApiUrl.getRestCalendar, {});

    var responseModel =
        CalendarInfoVO.fromJson(json.decode(utf8.decode(res.bodyBytes)));

    throwIf(
        responseModel.result != "S", Exception('getRestCalendar call error'));

    final entity = responseModel.schedule
        .where((element) => element.resYn == "N")
        .map((e) => CalendarEnableSelectEntity(
            year: e.year, month: e.month, day: e.day, resYn: e.resYn))
        .toList();

    return entity;
  }

  @override
  Future<ReservationVO> insertResInfo(Map<String, dynamic> param) async {
    var res =
        await dataSource.request(HttpMethod.post, ApiUrl.insertResInfo, param);

    var responseModel =
        ReservationVO.fromJson(json.decode(utf8.decode(res.bodyBytes)));

    return responseModel;
  }

  @override
  Future<LoginVO> login(Map<String, dynamic> param) async {
    var res = await dataSource.request(HttpMethod.post, ApiUrl.login, param);

    var responseModel =
        LoginVO.fromJson(json.decode(utf8.decode(res.bodyBytes)));

    return responseModel;
  }
}
