import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/extension/margin_extension.dart';

class CustomerCenterBox extends StatelessWidget {
  const CustomerCenterBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(CupertinoIcons.phone, size: 20).marginOnly(top: 5),
            const Gap(5),
            Text(
              '고객센터',
              style: AppTextStyle.textStyleBold
                  .copyWith(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
        Text(
          '문자 또는 카카오톡 남겨주세요.',
          style: AppTextStyle.textStyleBold
              .copyWith(fontSize: 13, color: Colors.black),
        ),
        Text(
          '010-7328-8301',
          style: AppTextStyle.textStyleBold
              .copyWith(fontSize: 25, color: AppColors.boxDark),
        ),
        const Gap(5),
        Text(
          '오전9시~오후6시 운영 / 토,일,휴일 휴무',
          style: AppTextStyle.textStyleNormal
              .copyWith(fontSize: 13, color: Colors.grey),
        ),
        const Gap(20),
      ],
    );
  }
}
