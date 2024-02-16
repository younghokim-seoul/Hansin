import 'package:hansin/domain/entity/content_entity.dart';

sealed class VerificationState {}

class Loading extends VerificationState {}

class Success extends VerificationState {

  final ContentInfoEntity entity;

  Success({required this.entity});

}

class Error extends VerificationState {}
