import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hansin/theme.dart';

class HomeBottomBox extends StatelessWidget {
  const HomeBottomBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '고객센터',
          style: AppTextStyle.textStyleBold
              .copyWith(fontSize: 20, color: Colors.black),
        ),
        const Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(CupertinoIcons.phone, size: 40),
            const Gap(10),
            Text(
              '1544-7199',
              style: AppTextStyle.textStyleBold
                  .copyWith(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
        const Gap(10),
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
