import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_vo.freezed.dart';
part 'schedule_vo.g.dart';

@freezed
class ScheduleVO with _$ScheduleVO {
  factory ScheduleVO({
    required int year,
    required int month,
    required int day,
    required String pmResYn,
    required String amResYn,
  }) = _ScheduleVO;

  factory ScheduleVO.fromJson(Map<String,dynamic> json) => _$ScheduleVOFromJson(json);
}
