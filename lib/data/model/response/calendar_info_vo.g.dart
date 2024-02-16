// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_info_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalendarInfoVOImpl _$$CalendarInfoVOImplFromJson(Map<String, dynamic> json) =>
    _$CalendarInfoVOImpl(
      year: json['year'] as String,
      month: json['month'] as String,
      day: json['day'] as String,
      amResYn: json['amResYn'] as String,
      pmResYn: json['pmResYn'] as String,
    );

Map<String, dynamic> _$$CalendarInfoVOImplToJson(
        _$CalendarInfoVOImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'amResYn': instance.amResYn,
      'pmResYn': instance.pmResYn,
    };
