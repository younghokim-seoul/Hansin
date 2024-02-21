// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_detail_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationDetailVOImpl _$$ReservationDetailVOImplFromJson(
        Map<String, dynamic> json) =>
    _$ReservationDetailVOImpl(
      year: json['year'] as String,
      month: json['month'] as String,
      day: json['day'] as String,
      amResYn: json['amResYn'] as String,
      pmResYn: json['pmResYn'] as String,
    );

Map<String, dynamic> _$$ReservationDetailVOImplToJson(
        _$ReservationDetailVOImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'amResYn': instance.amResYn,
      'pmResYn': instance.pmResYn,
    };
