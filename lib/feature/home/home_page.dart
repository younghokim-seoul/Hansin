import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hansin/assets/assets.gen.dart';
import 'package:hansin/feature/home/component/home_bottom_box.dart';
import 'package:hansin/feature/home/component/home_list_box.dart';
import 'package:hansin/theme.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Gap(20),
          Assets.images.titleLog.image(),
          const Gap(10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: HomeListBox(
                      title: '쇼룸\n안내 및 예약',
                      bgColor: AppColors.boxDark,
                      onTap: () {}),
                ),
                Flexible(
                  child: HomeListBox(
                    title: '제품 재고\n현황',
                    bgColor: AppColors.boxLight,
                    onTap: () {},
                  ),
                ),
                Flexible(
                  child: HomeListBox(
                    title: '반드시\n확인할 사항',
                    bgColor: AppColors.boxDark,
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          const Gap(10),
          const HomeBottomBox(),
        ]),
      ),
    );
  }
}
