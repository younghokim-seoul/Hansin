import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hansin/assets/assets.gen.dart';
import 'package:hansin/feature/home/component/home_bottom_box.dart';
import 'package:hansin/feature/home/component/home_list_box.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:hansin/widget/passcode/functions.dart';

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
                      onTap: () {
                        screenLock(
                          title: Text('전화번호를 입력해주세요.',style: AppTextStyle.textStyleNormal,),
                          context: context,
                          correctString: 'x' * 11,
                          canCancel: false,
                          onValidate: (value) async  {
                            Log.d(":::onValidate .. $value");
                            return false;
                          },
                          footer: Container(
                            width: 68,
                            height: 68,
                            padding: const EdgeInsets.only(top: 10),
                            child: OutlinedButton(
                              onPressed: () => Navigator.pop(context),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Text('Cancel'),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Flexible(
                  child: HomeListBox(
                    title: '제품 재고\n현황',
                    bgColor: AppColors.boxLight,
                    onTap: () => context.router.push(const LiveStockRoute()),
                  ),
                ),
                Flexible(
                  child: HomeListBox(
                    title: '반드시\n확인할 사항',
                    bgColor: AppColors.boxDark,
                    onTap: () => context.router.push(const VerificationRoute()),
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
