// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginVOImpl _$$LoginVOImplFromJson(Map<String, dynamic> json) =>
    _$LoginVOImpl(
      result: json['result'] as String,
      resultMsg: json['resultMsg'] as String,
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      userCompanyName: json['userCompanyName'] as String?,
      userPhone: json['userPhone'] as String?,
    );

Map<String, dynamic> _$$LoginVOImplToJson(_$LoginVOImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'resultMsg': instance.resultMsg,
      'userId': instance.userId,
      'userName': instance.userName,
      'userCompanyName': instance.userCompanyName,
      'userPhone': instance.userPhone,
    };
