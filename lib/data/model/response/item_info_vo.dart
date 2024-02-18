import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_info_vo.freezed.dart';
part 'item_info_vo.g.dart';


@freezed
class ItemInfoVO with _$ItemInfoVO{
  factory ItemInfoVO({
    required String itemGbn,
    required String itemName,
    required int itemCnt,
    required String lastUpdateDt,
  }) = _ItemInfoVO;

  factory ItemInfoVO.fromJson(Map<String,dynamic> json) => _$ItemInfoVOFromJson(json);

}
