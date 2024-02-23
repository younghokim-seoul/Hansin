import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hansin/data/model/response/calendar_schedule_vo.dart';

part 'calendar_info_vo.freezed.dart';
part 'calendar_info_vo.g.dart';

@freezed
class CalendarInfoVO with _$CalendarInfoVO {
  factory CalendarInfoVO({
    required String result,
    required List<CalendarScheduleVO> schedule,
    required String resultMsg,
  }) = _CalendarInfoVO;

  factory CalendarInfoVO.fromJson(Map<String,dynamic> json) => _$CalendarInfoVOFromJson(json);
}
