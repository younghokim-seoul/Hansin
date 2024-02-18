import 'package:hansin/domain/entity/stock_entity.dart';

sealed class SignUpState {}

class Loading extends SignUpState {}

class Success extends SignUpState {

  final List<StockEntity> entity;

  Success({required this.entity});

}

class Error extends SignUpState {}
