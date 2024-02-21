import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_enable_select_entity.freezed.dart';

@freezed
class CalendarEnableSelectEntity with _$CalendarEnableSelectEntity {
  factory CalendarEnableSelectEntity({
    required String year,
    required String month,
    required String day,
    required String resYn,
  }) = _CalendarEnableSelectEntity;
}
