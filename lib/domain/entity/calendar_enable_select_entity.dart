import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_enable_select_entity.freezed.dart';

@freezed
class CalendarEnableSelectEntity with _$CalendarEnableSelectEntity {
  factory CalendarEnableSelectEntity({
    required int year,
    required int month,
    required int day,
    required String resYn,
  }) = _CalendarEnableSelectEntity;
}
