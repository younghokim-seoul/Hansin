import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:hansin/assets/assets.gen.dart';
import 'package:hansin/feature/login/component/login_button_box.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:hansin/utils/screen_util.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  static const routeName = '/login';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Colors.transparent,
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Assets.images.loginBg.image(fit: BoxFit.cover),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: getScreenHeight(context) * 0.15,
                ),
                LoginButtonBox(
                    title: "로그인",
                    bgColor: AppColors.boxDark,
                    onTap: () => context.router.push(const PhoneJoinRoute())),
                const Gap(10),
                LoginButtonBox(
                    title: "회원가입",
                    bgColor: AppColors.boxLight,
                    onTap: () => context.router.push(const TermsRoute())),
                SizedBox(
                  height: getScreenHeight(context) * 0.15,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
