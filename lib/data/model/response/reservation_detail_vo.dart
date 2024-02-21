import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_detail_vo.freezed.dart';
part 'reservation_detail_vo.g.dart';

@freezed
class ReservationDetailVO with _$ReservationDetailVO {
  factory ReservationDetailVO({
    required String year,
    required String month,
    required String day,
    required String amResYn,
    required String pmResYn,
  }) = _ReservationDetailVO;

  factory ReservationDetailVO.fromJson(Map<String,dynamic> json) => _$ReservationDetailVOFromJson(json);
}
