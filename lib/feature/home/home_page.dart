import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hansin/assets/assets.gen.dart';
import 'package:hansin/feature/home/component/home_list_box.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:hansin/widget/customer_center/customer_center_box.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Gap(5),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 16),
                child: InkWell(
                  onTap: () => context.router.push(const SettingRoute()),
                  child: const Icon(
                    Icons.menu,
                    size: 32,
                    color: AppColors.boxDark,
                  ),
                ),
              )),
          Assets.images.titleLogo.image(height: 70, fit: BoxFit.fill),
          const Gap(10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: HomeListBox(
                      title: '전시매장 안내 및 예약',
                      bgColor: AppColors.boxDark,
                      onTap: () {
                        context.router.push(const ShowRoomReservationRoute());
                      }),
                ),
                Flexible(
                  child: HomeListBox(
                    title: '제품 재고 현황',
                    bgColor: AppColors.boxLight,
                    onTap: () => context.router.push(const LiveStockRoute()),
                  ),
                ),
                Flexible(
                  child: HomeListBox(
                    title: '!필수 확인 사항!',
                    bgColor: AppColors.boxDark,
                    onTap: () => context.router.push(const VerificationRoute()),
                  ),
                ),
              ],
            ),
          ),
          const Gap(10),
          const CustomerCenterBox(),
        ]),
      ),
    );
  }
}
