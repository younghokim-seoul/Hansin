import 'dart:collection';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hansin/feature/show_room/show_room_reservation_view_model.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/extension/value_extension.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:yaru_widgets/widgets.dart';

class ReservationCalendar extends StatefulWidget {
  const ReservationCalendar({super.key, required this.viewModel});

  final ShowRoomReservationViewModel viewModel;

  @override
  State<ReservationCalendar> createState() => _ReservationCalendarState();
}

class _ReservationCalendarState extends State<ReservationCalendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  final Set<DateTime> _selectedDays = LinkedHashSet<DateTime>(
    equals: isSameDay,
    hashCode: getHashCode,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedDay = _focusedDay;
    widget.viewModel.onLoadCalendarData();
  }

  @override
  Widget build(BuildContext context) {
    return widget.viewModel.showRoomCalendarUiState.ui(
        builder: (context, state) {
      if (!state.hasData || state.data.isNullOrEmpty) {
        return Container();
      }

      if (state.data!.isInitialize == true &&
          (state.data!.isLoading || state.data!.error)) {
        return const Center(child: YaruCircularProgressIndicator());
      }

      if (state.data!.isInitialize == true &&
          !state.data!.items.isNullOrEmpty) {
        for (var element in state.data!.items) {
          final dateTime = DateTime.utc(element.year, element.month, element.day);
          _selectedDays.add(dateTime);
        }

        return TableCalendar(
          locale: 'ko_KR',
          focusedDay: _focusedDay,
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          firstDay: kFirstDay,
          lastDay: kLastDay,
          onDaySelected: _onDaySelected,
          onPageChanged: _onPageChanged,
          calendarStyle: CalendarStyle(
            outsideTextStyle: AppTextStyle.textStyleBold
                .copyWith(color: const Color(0xFFAEAEAE)),
            disabledTextStyle: AppTextStyle.textStyleBold.copyWith(
              color: const Color(0xFFBFBFBF),
              decoration: TextDecoration.lineThrough,
            ),
            defaultTextStyle: AppTextStyle.textStyleBold,
          ),
          enabledDayPredicate: _enabledDayPredicate,
        );
      }

      return const SizedBox.shrink();
    });
  }

  bool _enabledDayPredicate(DateTime day) {
    //날짜를 비활성화 시키는 클래스..
    // Log.d(":::_enabledDayPredicate $day");
    return !_selectedDays.contains(day);
  }

  void _onPageChanged(DateTime focusedDay) {
    Log.d(":::_onPageChanged $focusedDay");
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    Log.d(":::_onDaySelected $selectedDay . $focusedDay");
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
    }
    context.router
        .push(ReservationRegisterRoute(selectedDateTime: selectedDay));
  }
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}
