import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_info_vo.freezed.dart';
part 'calendar_info_vo.g.dart';

@freezed
class CalendarInfoVO with _$CalendarInfoVO {
  factory CalendarInfoVO({
    required String year,
    required String month,
    required String day,
    required String amResYn,
    required String pmResYn,
  }) = _CalendarInfoVO;

  factory CalendarInfoVO.fromJson(Map<String,dynamic> json) => _$CalendarInfoVOFromJson(json);
}
