// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleVOImpl _$$ScheduleVOImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleVOImpl(
      year: json['year'] as int,
      month: json['month'] as int,
      day: json['day'] as int,
      pmResYn: json['pmResYn'] as String,
      amResYn: json['amResYn'] as String,
    );

Map<String, dynamic> _$$ScheduleVOImplToJson(_$ScheduleVOImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'pmResYn': instance.pmResYn,
      'amResYn': instance.amResYn,
    };
