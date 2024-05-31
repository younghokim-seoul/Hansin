import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:hansin/assets/assets.gen.dart';
import 'package:hansin/domain/entity/certify_entity.dart';
import 'package:hansin/feature/sign_up/passwod_reset/password_reset_state.dart';
import 'package:hansin/feature/sign_up/passwod_reset/password_reset_view_model.dart';
import 'package:hansin/injector.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/extension/margin_extension.dart';
import 'package:hansin/utils/helper_message.dart';
import 'package:hansin/utils/screen_util.dart';
import 'package:hansin/widget/label_text_filed/labeled_input_field.dart';

@RoutePage()
class PasswordResetPage extends ConsumerStatefulWidget {
  static const routeName = '/password_reset';

  const PasswordResetPage({super.key, required this.certifyEntity});

  final CertifyEntity certifyEntity;

  @override
  ConsumerState createState() => _PasswordResetPageState();
}

class _PasswordResetPageState extends ConsumerState<PasswordResetPage> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final _viewModel = getIt<PasswordResetViewModel>();

  @override
  void initState() {
    super.initState();

    _viewModel.passWordUiState.stream.listen((state) {
      if (state is ResetSuccess) {
        AppMessage.showMessage("비밀번호 재설정에 성공 하였습니다.");
        context.router.popForced();
      }

      if (state is ResetError) {
        AppMessage.showMessage("비밀번호 재설정에 실패 하였습니다.");
      }
    });
  }

  @override
  void dispose() {
    _viewModel.disposeAll();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: getScreenWidth(context),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Gap(20),
                Assets.images.titleLogo.image(height: 100, fit: BoxFit.fill),
                const Gap(10),
                LabeledInputField(
                  controller: _newPasswordController,
                  label: '* 새 패스워드',
                  hintText: '변경할 패스워드를 입력해주세요.',
                  errorText: null,
                  enabled: true,
                  fwMode: true,
                  keyboardType: TextInputType.name,
                ).marginOnly(left: 20, right: 20, top: 5, bottom: 5),
                LabeledInputField(
                  controller: _confirmPasswordController,
                  label: '* 새 패스워드 확인',
                  hintText: '변경할 패스워드를 다시 입력해주세요.',
                  errorText: null,
                  enabled: true,
                  fwMode: true,
                  keyboardType: TextInputType.name,
                ).marginOnly(left: 20, right: 20, top: 5, bottom: 5),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          if(_newPasswordController.text.isEmpty || _confirmPasswordController.text.isEmpty){
            AppMessage.showMessage("비밀번호를 입력해주세요.");
            return;
          }

          if(_newPasswordController.text != _confirmPasswordController.text){
            AppMessage.showMessage("비밀번호가 일치하지 않습니다.");
            return;
          }

          Map<String,String> resetParms = {};
          resetParms['authFlag'] = 'Y';
          resetParms['userId'] = widget.certifyEntity.phone;
          resetParms['userPwd'] = "";
          resetParms['newUserPwd'] = _newPasswordController.text;
          resetParms['newUserPwdChk'] = _newPasswordController.text;

          _viewModel.submit(resetParms);
        },
        child: Container(
          width: getScreenWidth(context),
          decoration: const BoxDecoration(color: AppColors.boxDark),
          child: Text(
            '변경하기',
            textAlign: TextAlign.center,
            style: AppTextStyle.textStyleBold
                .copyWith(fontSize: 28, color: Colors.white),
          ).paddingOnly(top: 15, bottom: 15),
        ),
      ),
    );
  }
}
