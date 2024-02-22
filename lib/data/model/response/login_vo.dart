import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_vo.freezed.dart';
part 'login_vo.g.dart';


@freezed
class LoginVO with _$LoginVO{
  factory LoginVO({
    required String result,
    required String resultMsg,
    required String? userId,
    required String? userName,
    required String? userCompanyName,
    required String? userPhone,
  }) = _LoginVO;

  factory LoginVO.fromJson(Map<String,dynamic> json) => _$LoginVOFromJson(json);

}


