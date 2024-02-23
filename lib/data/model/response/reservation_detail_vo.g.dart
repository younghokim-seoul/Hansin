// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_detail_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationDetailVOImpl _$$ReservationDetailVOImplFromJson(
        Map<String, dynamic> json) =>
    _$ReservationDetailVOImpl(
      result: json['result'] as String,
      schedule: json['schedule'] == null
          ? null
          : ScheduleVO.fromJson(json['schedule'] as Map<String, dynamic>),
      resultMsg: json['resultMsg'] as String,
    );

Map<String, dynamic> _$$ReservationDetailVOImplToJson(
        _$ReservationDetailVOImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'schedule': instance.schedule,
      'resultMsg': instance.resultMsg,
    };
