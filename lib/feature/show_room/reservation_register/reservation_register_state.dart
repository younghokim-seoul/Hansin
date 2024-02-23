import 'package:hansin/domain/entity/calendar_detail_entity.dart';

sealed class ReservationRegisterState {}

class Initialize extends ReservationRegisterState {}

class Loading extends ReservationRegisterState {}

class Success extends ReservationRegisterState {

  final CalendarDetailEntity entity;

  Success({required this.entity});

}

class Error extends ReservationRegisterState {}
