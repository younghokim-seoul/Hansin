// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_schedule_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalendarScheduleVOImpl _$$CalendarScheduleVOImplFromJson(
        Map<String, dynamic> json) =>
    _$CalendarScheduleVOImpl(
      year: json['year'] as int,
      month: json['month'] as int,
      day: json['day'] as int,
      resYn: json['resYn'] as String,
    );

Map<String, dynamic> _$$CalendarScheduleVOImplToJson(
        _$CalendarScheduleVOImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'resYn': instance.resYn,
    };
