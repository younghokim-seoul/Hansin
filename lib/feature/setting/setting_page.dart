import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hansin/assets/assets.gen.dart';
import 'package:hansin/feature/home/component/home_list_box.dart';
import 'package:hansin/feature/home/home_page.dart';
import 'package:hansin/feature/setting/setting_state.dart';
import 'package:hansin/feature/setting/setting_view_model.dart';
import 'package:hansin/injector.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:hansin/widget/dialog/dialogs.dart';

@RoutePage()
class SettingPage extends StatelessWidget {
  static const routeName = '/setting';

  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<SettingViewModel>();

    viewModel.settingUiEvent.stream.listen((event) {
      if (event is LogOutSuccess || event is UserDeleteSuccess) {
        context.router
            .pushAndPopUntil(const LoginRoute(), predicate: (route) => route.settings.name == HomePage.routeName);
      }
      if (event is Error) {
        showErrorDialog(
          context: context,
          title: "오류",
          message: "잠시 후 다시 시도 해주세요.",
        );
      }
    });

    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Gap(10),
          Assets.images.titleLogo.image(height: 100, fit: BoxFit.fill),
          const Gap(10),
          Text(
            "계정 관리 페이지",
            textAlign: TextAlign.center,
            style: AppTextStyle.textStyleBold.copyWith(fontSize: 28, color: Colors.black),
          ),
          const Gap(10),
          SizedBox(
            height: 120,
            child: HomeListBox(title: '로그아웃', bgColor: AppColors.boxDark, onTap: viewModel.onLogoutUser),
          ),
          SizedBox(
            height: 120,
            child: HomeListBox(
                title: '계정 삭제',
                bgColor: AppColors.boxLight,
                onTap: () {
                  showWarningDialog(
                    context: context,
                    title: "경고!",
                    message: "정말로 삭제하시겠습니까?",
                    onTap: viewModel.onDeleteUser,
                  );
                }),
          )
        ]),
      ),
    );
  }
}
