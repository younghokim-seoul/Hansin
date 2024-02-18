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
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

@RoutePage()
class ShowRoomReservationPage extends StatefulWidget {
  static const routeName = '/show_room_reservation';

  const ShowRoomReservationPage({super.key});

  @override
  State<ShowRoomReservationPage> createState() => _ShowRoomReservationPageState();
}

class _ShowRoomReservationPageState extends State<ShowRoomReservationPage> {
  final _viewModel = getIt<ShowRoomReservationViewModel>();

  @override
  void initState() {
    super.initState();
    _viewModel.onLoadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            buildShowReservationEventView(),
            buildBottomView(),
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

          return Expanded(
              child: SingleChildScrollView(
            child: CachedNetworkImage(
              imageUrl: model.entity.contentImage,
              placeholder: (context, url) =>
                  const YaruCircularProgressIndicator(strokeWidth: 2),
              errorWidget: (context, url, error) => const Icon(YaruIcons.error),
            ),
          ));
        }

        if (state is Loading) {}

        if (state is Error) {}

        return Container();
      });

  Widget buildBottomView() => Container(
        margin: const EdgeInsets.all(0),
        width: getScreenWidth(context),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          color: AppColors.boxDark,
        ),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              child: InkWell(
                  onTap: () => context.router.popUntil(
                      (route) => route.settings.name == HomeRoute.name),
                  child: Text(
                    '기본 화면으로',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.textStyleBold
                        .copyWith(fontSize: 28, color: Colors.white),
                  ).paddingOnly(top: 15, bottom: 15)),
            ),
            Container(
              width: 2,
              height: 50,
              color: AppColors.textLigth,
            ),
            Expanded(
              child: InkWell(
                  onTap: () {

                  },
                  child: Text(
                    '예약하기',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.textStyleBold
                        .copyWith(fontSize: 28, color: Colors.white),
                  ).paddingOnly(top: 15, bottom: 15)),
            ),
          ],
        ),
      );
}
