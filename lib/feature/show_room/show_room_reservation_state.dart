import 'package:hansin/domain/entity/content_entity.dart';

sealed class ShowRoomReservationState {}

class Loading extends ShowRoomReservationState {}

class Success extends ShowRoomReservationState {

  final ContentInfoEntity entity;

  Success({required this.entity});

}

class Error extends ShowRoomReservationState {}
