import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_vo.freezed.dart';
part 'reservation_vo.g.dart';

@freezed
class ReservationVO with _$ReservationVO {
  factory ReservationVO({
    required String result,
    required String resultMsg,
  }) = _ReservationVO;

  factory ReservationVO.fromJson(Map<String,dynamic> json) => _$ReservationVOFromJson(json);
}
