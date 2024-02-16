import 'package:hansin/domain/entity/stock_entity.dart';

sealed class LiveStockState {}

class Loading extends LiveStockState {}

class Success extends LiveStockState {

  final List<StockEntity> entity;

  Success({required this.entity});

}

class Error extends LiveStockState {}
