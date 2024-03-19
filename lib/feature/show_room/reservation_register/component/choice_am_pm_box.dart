import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hansin/feature/show_room/reservation_register/component/disable_paint.dart';
import 'package:hansin/theme.dart';

class ChoiceAmPmBox extends StatelessWidget {
  const ChoiceAmPmBox({
    super.key,
    required this.title,
    required this.timeRangeTitle,
    required this.isFocus,
    required this.onTap,
    required this.isDisable,
  });

  final String title;
  final String timeRangeTitle;
  final bool isFocus;
  final bool isDisable;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: isDisable == true
          ? CustomPaint(
              foregroundPainter: DisablePaint(),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(width: 1, color: AppColors.boxDark),
                  color: isFocus ? AppColors.boxDark : Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 5.0,
                      offset: const Offset(0, 8),
                    )
                  ],
                ),
                child: Text(
                  title,
                  style: AppTextStyle.textStyleBold.copyWith(
                    fontSize: 28,
                    color: !isFocus ? AppColors.boxDark : Colors.white,
                  ),
                ),
              ),
            )
          : Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                border: Border.all(width: 1, color: AppColors.boxDark),
                color: isFocus ? AppColors.boxDark : Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    blurRadius: 5.0,
                    offset: const Offset(0, 8),
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: AppTextStyle.textStyleBold.copyWith(
                      fontSize: 28,
                      color: !isFocus ? AppColors.boxDark : Colors.white,
                    ),
                  ),
                  const Gap(5),
                  Text(
                    timeRangeTitle,
                    style: AppTextStyle.textStyleBold.copyWith(
                      fontSize: 20,
                      height: 0,
                      color: !isFocus ? Colors.black : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
