import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:hansin/assets/assets.gen.dart';
import 'package:hansin/domain/entity/certify_entity.dart';
import 'package:hansin/feature/login/component/login_button_box.dart';
import 'package:hansin/feature/sign_up/certify/pass_certify_page.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/helper_message.dart';
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
                LoginButtonBox(
                  title: "비밀번호 재설정",
                  bgColor: Colors.transparent,
                  onTap: ()  async {
                    final result = await context.router.push(PassCertifyRoute(certifyType: CertifyType.reset));
                    Log.d("result.. $result");
                    if (result != null) {
                      Log.d("::");
                      final model = result as CertifyEntity;
                      if (model.code == 0) {
                        AppMessage.showMessage("인증에 성공 하였습니다.");
                        if (context.mounted) {
                          context.router.push(PasswordResetRoute(certifyEntity: model));
                        }
                      } else {
                        AppMessage.showMessage("인증에 실패 하였습니다.");
                      }
                    }
                  },
                  isUnderline: true,
                ),
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
