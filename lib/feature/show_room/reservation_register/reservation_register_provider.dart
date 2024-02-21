import 'package:flutter_riverpod/flutter_riverpod.dart';

final timeTypeProvider = StateProvider<TimeType>((_) => TimeType.none);


enum TimeType{
  none,am,pm
}