import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_info_vo.freezed.dart';

part 'content_info_vo.g.dart';

@freezed
class ContentInfoVO with _$ContentInfoVO {
  factory ContentInfoVO({
    required String result,
    required String resultMsg,
    required String contentName,
    required String contentImage,
  }) = _ContentInfoVO;

  factory ContentInfoVO.fromJson(Map<String, dynamic> json) =>
      _$ContentInfoVOFromJson(json);
}

enum ContentType { screw, piston, price, buy ,priceBtn}
