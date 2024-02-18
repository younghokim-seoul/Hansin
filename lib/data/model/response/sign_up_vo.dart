import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_vo.freezed.dart';
part 'sign_up_vo.g.dart';


@freezed
class SignUpVO with _$SignUpVO{
  factory SignUpVO({
    required String result,
    required String resultMsg,
  }) = _SignUpVO;

  factory SignUpVO.fromJson(Map<String,dynamic> json) => _$SignUpVOFromJson(json);

}
