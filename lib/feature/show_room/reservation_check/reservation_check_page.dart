import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:hansin/feature/show_room/reservation_register/reservation_register_provider.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/extension/margin_extension.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:hansin/utils/screen_util.dart';
import 'package:hansin/widget/customer_center/customer_center_box.dart';

@RoutePage()
class ReservationCheckPage extends ConsumerStatefulWidget {
  static const routeName = '/reservation_check';

  const ReservationCheckPage({super.key, required this.selectedDateTime, required this.timeType});

  final DateTime selectedDateTime;
  final TimeType timeType;

  @override
  ConsumerState createState() => _ReservationRegisterPageState();
}

class _ReservationRegisterPageState extends ConsumerState<ReservationCheckPage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '예약 일정 확인',
                style: AppTextStyle.textStyleBold.copyWith(
                  fontSize: 35,
                  color: AppColors.boxDark,
                ),
              ).marginSymmetric(horizontal: 16, vertical: 10),
              const Gap(10),
              Container(
                color: AppColors.boxDark,
                width: getScreenWidth(context),
                height: 3,
              ),
              const Gap(10),
              Text(
                '예약이 완료됐습니다!',
                style: AppTextStyle.textStyleBold.copyWith(
                  fontSize: 32,
                  color: AppColors.boxDark,
                ),
              ).marginSymmetric(horizontal: 16, vertical: 10),
              const Gap(10),
              Container(
                width: getScreenWidth(context),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: AppColors.boxDark,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '한신 쇼룸 방문 예약 일정 확인',
                      style: AppTextStyle.textStyleBold.copyWith(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ).marginSymmetric(horizontal: 16, vertical: 10),
                    const Gap(10),
                    Container(
                      color: Colors.white,
                      width: getScreenWidth(context),
                      height: 3,
                    ),
                    Text(
                      _getSelectedTime(widget.selectedDateTime),
                      style: AppTextStyle.textStyleBold.copyWith(
                        letterSpacing: 1.5,
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      widget.timeType == TimeType.am ? "오전 10:00 ~ 12:00" : "오후 2:00 ~ 5:00",
                      style: AppTextStyle.textStyleBold.copyWith(
                        letterSpacing: 5,
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                    const Gap(10),
                  ],
                ),
              ),
              const Gap(10),
              Text(
                '자세한 예약 시간은\n문자 / 전화를 통해 상담드리겠습니다.',
                textAlign: TextAlign.center,
                style: AppTextStyle.textStyleBold.copyWith(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ).marginSymmetric(horizontal: 16, vertical: 10),
            ],
          ),
        ),
        bottomNavigationBar: IntrinsicHeight(
          child: Column(
            children: [
              const CustomerCenterBox(),
              InkWell(
                onTap: () {
                  context.router.popUntilRouteWithName(HomeRoute.name);
                },
                child: Container(
                  width: getScreenWidth(context),
                  decoration: const BoxDecoration(color: AppColors.boxDark),
                  child: Text(
                    '확인',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.textStyleBold.copyWith(fontSize: 28, color: Colors.white),
                  ).paddingOnly(top: 15, bottom: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String _getSelectedTime(DateTime dateTime) {
    return "${dateTime.year}년 ${dateTime.month}월 ${dateTime.day}일";
  }
}
