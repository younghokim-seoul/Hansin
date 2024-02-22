import 'package:hansin/data/model/response/login_vo.dart';

sealed class PhoneJoinState {}

class Loading extends PhoneJoinState {}

class Success extends PhoneJoinState {

  final LoginVO entity;

  Success({required this.entity});

}

class Error extends PhoneJoinState {}
