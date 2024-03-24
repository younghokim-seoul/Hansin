import 'package:hansin/data/model/response/sign_up_vo.dart';

sealed class SignUpState {}

class Loading extends SignUpState {}

class Success extends SignUpState {

  final SignUpVO entity;

  Success({required this.entity});

}

class Error extends SignUpState {}
