import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:hansin/feature/show_room/reservation_register/component/choice_am_pm_box.dart';
import 'package:hansin/feature/show_room/reservation_register/reservation_register_provider.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/extension/margin_extension.dart';
import 'package:hansin/utils/screen_util.dart';
import 'package:hansin/widget/customer_center/customer_center_box.dart';

@RoutePage()
class ReservationRegisterPage extends ConsumerWidget {
  static const routeName = '/reservation_register';

  const ReservationRegisterPage({super.key, required this.selectedDateTime});

  final DateTime selectedDateTime;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '일정 및 시간 선택',
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: AppColors.boxDark,
              ),
              child: Text(
                _getSelectedTime(selectedDateTime),
                style: AppTextStyle.textStyleBold.copyWith(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
            const Gap(10),
            Row(
              children: [
                Expanded(
                  child: ChoiceAmPmBox(
                    title: "오전",
                    focus: ref.watch(timeTypeProvider) == TimeType.am,
                    onTap: () => ref.read(timeTypeProvider.notifier).state = TimeType.am,
                  ),
                ),
                Expanded(
                    child: ChoiceAmPmBox(
                  title: "오후",
                  focus: ref.watch(timeTypeProvider) == TimeType.pm,
                  onTap: () => ref.read(timeTypeProvider.notifier).state = TimeType.pm,
                )),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: IntrinsicHeight(
        child: Column(
          children: [
            const CustomerCenterBox(),
            InkWell(
              onTap: () {
                
              },
              child: Container(
                width: getScreenWidth(context),
                decoration: const BoxDecoration(color: AppColors.boxDark),
                child: Text(
                  '예약하기',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.textStyleBold
                      .copyWith(fontSize: 28, color: Colors.white),
                ).paddingOnly(top: 15, bottom: 15),
              ),
            )
          ],
        ),
      ),
    );
  }

  String _getSelectedTime(DateTime dateTime) {
    return "${dateTime.year}년${dateTime.month}월${dateTime.day}일";
  }
}
