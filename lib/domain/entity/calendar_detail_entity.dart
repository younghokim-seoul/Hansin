import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_detail_entity.freezed.dart';

@freezed
class CalendarDetailEntity with _$CalendarDetailEntity {
  factory CalendarDetailEntity({
    required String year,
    required String month,
    required String day,
    required String resYn,
  }) = _CalendarDetailEntity;
}
