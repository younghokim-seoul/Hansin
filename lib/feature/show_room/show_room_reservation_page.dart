import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hansin/feature/show_room/show_room_reservation_state.dart';
import 'package:hansin/feature/show_room/show_room_reservation_view_model.dart';
import 'package:hansin/injector.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/extension/margin_extension.dart';
import 'package:hansin/utils/extension/value_extension.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:hansin/utils/screen_util.dart';
import 'package:hansin/widget/calendar/reservation_calendar.dart';
import 'package:yaru/icons.dart';
import 'package:yaru/widgets.dart';

@RoutePage()
class ShowRoomReservationPage extends StatefulWidget {
  static const routeName = '/show_room_reservation';

  const ShowRoomReservationPage({super.key});

  @override
  State<ShowRoomReservationPage> createState() =>
      _ShowRoomReservationPageState();
}

class _ShowRoomReservationPageState extends State<ShowRoomReservationPage> {
  final _viewModel = getIt<ShowRoomReservationViewModel>();

  @override
  void initState() {
    super.initState();
    _viewModel.onLoadGuideData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: buildShowReservationEventView()),
            Positioned(
              bottom: 0,
              child: Container(
                color: Colors.white,
                child: buildBottomView(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildShowReservationEventView() =>
      _viewModel.showRoomReservationUiState.ui(builder: (context, state) {
        if (!state.hasData || state.data.isNullOrEmpty) return Container();

        if (state.data is Success) {
          final model = state.data as Success;

          return SingleChildScrollView(
            child: CachedNetworkImage(
              imageUrl: model.entity.contentImage,
              placeholder: (context, url) =>
                  const YaruCircularProgressIndicator(
                strokeWidth: 2,
                color: AppColors.boxDark,
              ),
              errorWidget: (context, url, error) => const Icon(YaruIcons.error),
            ),
          );
        }

        if (state is Loading) {}

        if (state is Error) {}

        return Container();
      });

  Widget buildBottomView() => IntrinsicHeight(
        child: Flex(
          direction: Axis.vertical,
          children: [
            _buildCalendarView(),
            Container(
              margin: const EdgeInsets.all(0),
              width: getScreenWidth(context),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(0)),
                color: AppColors.boxDark,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => context.router.popUntil(
                          (route) => route.settings.name == HomeRoute.name),
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          color: AppColors.iconLight,
                        ),
                        child: Text(
                          '기본 화면으로',
                          textAlign: TextAlign.center,
                          style: AppTextStyle.textStyleBold
                              .copyWith(fontSize: 28, color: Colors.black),
                        ).paddingOnly(top: 15, bottom: 15),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                        onTap: _viewModel.setToggleCalendar,
                        child: _viewModel.isVisibleCalendar.ui(
                            builder: (context, state) {
                          return Text(
                            state.data == true ? "날짜선택완료" : "방문예약하기",
                            textAlign: TextAlign.center,
                            style: AppTextStyle.textStyleBold
                                .copyWith(fontSize: 28, color: Colors.white),
                          ).paddingOnly(top: 15, bottom: 15);
                        })),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _buildCalendarView() {
    return _viewModel.isVisibleCalendar.ui(builder: (context, isShow) {
      if (isShow.data == true) {
        return SizedBox(
          width: getScreenWidth(context),
          height: getScreenHeight(context) * 0.55,
          child: ReservationCalendar(viewModel: _viewModel),
        );
      } else {
        return const SizedBox.shrink();
      }
    });
  }
}
