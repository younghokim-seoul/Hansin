import 'package:hansin/data/model/response/login_vo.dart';
import 'package:hansin/data/model/response/reservation_detail_vo.dart';
import 'package:hansin/data/model/response/reservation_vo.dart';
import 'package:hansin/data/model/response/sign_up_vo.dart';
import 'package:hansin/domain/entity/calendar_enable_select_entity.dart';
import 'package:hansin/domain/entity/content_entity.dart';
import 'package:hansin/domain/entity/stock_entity.dart';

abstract class ItemRepository {
  Future<LoginVO> login(Map<String, dynamic> param);

  Future<SignUpVO> createUser(Map<String, dynamic> param);

  Future<ContentInfoEntity> getContentInfo(Map<String, dynamic> param);

  Future<List<StockEntity>> getItemInfo();

  //예약가능일자 조회
  Future<List<CalendarEnableSelectEntity>> getRestCalendar();

  //예약가능일자 상세조회
  Future<ReservationDetailVO> getRestCalendarDetail(Map<String, dynamic> param);

  Future<ReservationVO> insertResInfo(Map<String, dynamic> param);
}
