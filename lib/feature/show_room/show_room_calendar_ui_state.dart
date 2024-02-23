import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hansin/domain/entity/calendar_enable_select_entity.dart';

part 'show_room_calendar_ui_state.freezed.dart';

@freezed
class ShowRoomCalendarUiState with _$ShowRoomCalendarUiState {
  factory ShowRoomCalendarUiState({
    required bool isInitialize,
    required bool isLoading,
    required List<CalendarEnableSelectEntity> items,
    required bool error,
  }) = _ShowRoomCalendarUiState;
}

