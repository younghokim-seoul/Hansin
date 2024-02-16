import 'package:hansin/domain/entity/content_entity.dart';

sealed class MegaSaleState {}

class Loading extends MegaSaleState {}

class Success extends MegaSaleState {

  final ContentInfoEntity entity;

  Success({required this.entity});

}

class Error extends MegaSaleState {}
