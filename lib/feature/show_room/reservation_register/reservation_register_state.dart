import 'package:hansin/domain/entity/content_entity.dart';

sealed class ReservationRegisterState {}

class Loading extends ReservationRegisterState {}

class Success extends ReservationRegisterState {

  final ContentInfoEntity entity;

  Success({required this.entity});

}

class Error extends ReservationRegisterState {}
