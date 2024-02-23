// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_info_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalendarInfoVOImpl _$$CalendarInfoVOImplFromJson(Map<String, dynamic> json) =>
    _$CalendarInfoVOImpl(
      result: json['result'] as String,
      schedule: (json['schedule'] as List<dynamic>)
          .map((e) => CalendarScheduleVO.fromJson(e as Map<String, dynamic>))
          .toList(),
      resultMsg: json['resultMsg'] as String,
    );

Map<String, dynamic> _$$CalendarInfoVOImplToJson(
        _$CalendarInfoVOImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'schedule': instance.schedule,
      'resultMsg': instance.resultMsg,
    };
