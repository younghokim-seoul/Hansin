import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_schedule_vo.freezed.dart';
part 'calendar_schedule_vo.g.dart';

@freezed
class CalendarScheduleVO with _$CalendarScheduleVO {
  factory CalendarScheduleVO({
    required int year,
    required int month,
    required int day,
    required String resYn,
  }) = _CalendarScheduleVO;

  factory CalendarScheduleVO.fromJson(Map<String,dynamic> json) => _$CalendarScheduleVOFromJson(json);
}
