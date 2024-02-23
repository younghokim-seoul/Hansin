import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hansin/data/model/response/schedule_vo.dart';

part 'reservation_detail_vo.freezed.dart';
part 'reservation_detail_vo.g.dart';

@freezed
class ReservationDetailVO with _$ReservationDetailVO {
  factory ReservationDetailVO({
    required String result,
    required ScheduleVO? schedule,
    required String resultMsg,
  }) = _ReservationDetailVO;

  factory ReservationDetailVO.fromJson(Map<String,dynamic> json) => _$ReservationDetailVOFromJson(json);
}
