import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:hansin/feature/show_room/reservation_register/component/choice_am_pm_box.dart';
import 'package:hansin/feature/show_room/reservation_register/reservation_register_provider.dart';
import 'package:hansin/feature/show_room/reservation_register/reservation_register_state.dart';
import 'package:hansin/feature/show_room/reservation_register/reservation_register_view_model.dart';
import 'package:hansin/injector.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/extension/margin_extension.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:hansin/utils/screen_util.dart';
import 'package:hansin/widget/customer_center/customer_center_box.dart';
import 'package:hansin/widget/dialog/dialogs.dart';
import 'package:yaru/widgets.dart';


@RoutePage()
class ReservationRegisterPage extends ConsumerStatefulWidget {
  static const routeName = '/reservation_register';

  const ReservationRegisterPage({super.key, required this.selectedDateTime});

  final DateTime selectedDateTime;

  @override
  ConsumerState createState() => _ReservationRegisterPageState();
}

class _ReservationRegisterPageState
    extends ConsumerState<ReservationRegisterPage> {
  final _viewModel = getIt<ReservationRegisterViewModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _viewModel.onLoadData(widget.selectedDateTime);
  }

  @override
  Widget build(BuildContext context) {
    final selectedTimeType = ref.watch(timeTypeProvider);

    return _viewModel.reservationRegisterUiState.ui(builder: (context, state) {
      if (state.data is Loading || state.data is Error) {
        return const DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: Center(
              child: YaruCircularProgressIndicator(
                strokeWidth: 2,
                color: AppColors.boxDark,
              ),
            ));
      }

      if (state.data is Success) {
        final model = state.data as Success;

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
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 5, bottom: 5),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: AppColors.boxDark,
                  ),
                  child: Text(
                    _getSelectedTime(widget.selectedDateTime),
                    style: AppTextStyle.textStyleBold.copyWith(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Gap(20),
                Text(
                  '방문시간대를 선택해주세요.',
                  style: AppTextStyle.textStyleBold.copyWith(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ).marginSymmetric(horizontal: 16, vertical: 10),
                const Gap(10),
                Row(
                  children: [
                    Expanded(
                      child: ChoiceAmPmBox(
                        title: "오전",
                        timeRangeTitle: "10시~12시",
                        isFocus: selectedTimeType == TimeType.am,
                        onTap: () => {
                          if (model.entity.amResYn == "Y")
                            {
                              ref.read(timeTypeProvider.notifier).state =
                                  TimeType.am
                            }
                        },
                        isDisable: model.entity.amResYn == "N",
                      ),
                    ),
                    Expanded(
                        child: ChoiceAmPmBox(
                      title: "오후",
                      timeRangeTitle: "2시~5시",
                      isFocus: selectedTimeType == TimeType.pm,
                      onTap: () => {
                        if (model.entity.pmResYn == "Y")
                          {
                            ref.read(timeTypeProvider.notifier).state =
                                TimeType.pm,
                          }
                      },
                      isDisable: model.entity.pmResYn == "N",
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
                  onTap: () async {
                    if (selectedTimeType == TimeType.none ||
                        (model.entity.amResYn == "N" &&
                            model.entity.pmResYn == "N")) {
                      return;
                    }

                    try {
                      final response = await _viewModel.registerReservation(
                          selectedTimeType, widget.selectedDateTime);

                      if (!context.mounted) return;

                      if (response.result == "S") {
                        context.router.push(
                          ReservationCheckRoute(
                            selectedDateTime: widget.selectedDateTime,
                            timeType: selectedTimeType,
                          ),
                        );
                      } else {
                        showError('오류', '예약에 실패하였습니다.');
                      }
                    } on Exception catch (e) {
                      Log.e(":::e => $e");
                      if (!context.mounted) return;
                      showError('오류', '예약 신청중 오류 발생.');
                    }

                    // context.router.push(ReservationCheckRoute(selectedDateTime: widget.selectedDateTime));
                  },
                  child: Container(
                    width: getScreenWidth(context),
                    decoration: BoxDecoration(
                        color: selectedTimeType == TimeType.none ||
                                (model.entity.amResYn == "N" &&
                                    model.entity.pmResYn == "N")
                            ? AppColors.textFaded
                            : AppColors.boxDark),
                    child: Text(
                      '예약 완료하기',
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
      return const SizedBox.shrink();
    });
  }

  Future<void> showError(String title, String message) => showErrorDialog(
        context: context,
        title: title,
        message: message,
      );

  String _getSelectedTime(DateTime dateTime) {
    return "${dateTime.year}년${dateTime.month}월${dateTime.day}일";
  }
}
