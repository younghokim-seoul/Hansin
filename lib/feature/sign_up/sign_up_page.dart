import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:hansin/assets/assets.gen.dart';
import 'package:hansin/domain/entity/certify_entity.dart';
import 'package:hansin/feature/sign_up/sign_up_state.dart';
import 'package:hansin/feature/sign_up/sign_up_view_model.dart';
import 'package:hansin/injector.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/extension/margin_extension.dart';
import 'package:hansin/utils/extension/value_extension.dart';
import 'package:hansin/utils/helper_message.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:hansin/utils/screen_util.dart';
import 'package:hansin/widget/customer_center/customer_center_box.dart';
import 'package:hansin/widget/dialog/dialogs.dart';
import 'package:hansin/widget/label_text_filed/labeled_input_field.dart';


@RoutePage()
class SignUpPage extends ConsumerStatefulWidget {
  static const routeName = '/sign_up';

  const SignUpPage({super.key,required this.certifyEntity});

  final CertifyEntity certifyEntity;

  @override
  ConsumerState createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  final TextEditingController _fwController = TextEditingController();
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _recommenderController = TextEditingController();
  final _viewModel = getIt<SignUpViewModel>();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.certifyEntity.name);
    _phoneController = TextEditingController(text: widget.certifyEntity.phone);

    _viewModel.signUpUiState.stream.listen((state) {
      if (state is Success) {
        if(state.entity.result == "S"){
          AppMessage.showMessage("회원가입에 성공하였습니다.");
          context.router.popUntil((route) => route.settings.name == LoginRoute.name);
        }else{
          showErrorDialog(
            context: context,
            title: '오류',
            message: state.entity.resultMsg,
          );
        }

      }
      if (state is Error) {
        showErrorDialog(
          context: context,
          title: '오류',
          message: '로그인에 실패하였습니다.',
        );
      }
    });
  }

  Future<void> showError(String title, String message) => showErrorDialog(
        context: context,
        title: title,
        message: message,
      );

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
                Assets.images.titleLogo.image(height: 70,fit: BoxFit.fill),
                const Gap(10),
                LabeledInputField(
                  controller: _nameController,
                  label: '* 성명',
                  hintText: '성명을 입력해주세요.',
                  errorText: null,
                  enabled: false,
                  keyboardType: TextInputType.name,
                ).marginOnly(left: 20, right: 20, top: 5, bottom: 5),
                LabeledInputField(
                  controller: _phoneController,
                  label: '* 전화번호',
                  hintText: '전화번호를 입력해주세요.',
                  errorText: null,
                  enabled: false,
                  keyboardType: TextInputType.name,
                ).marginOnly(left: 20, right: 20, top: 5, bottom: 5),
                LabeledInputField(
                  controller: _companyNameController,
                  label: '* 회사명',
                  hintText: '회사명을 입력해주세요.',
                  errorText: null,
                  keyboardType: TextInputType.text,
                ).marginOnly(left: 20, right: 20, top: 5, bottom: 5),
                LabeledInputField(
                  controller: _fwController,
                  label: '* 비밀번호',
                  hintText: '비밀번호 입력해주세요.',
                  errorText: null,
                  keyboardType: TextInputType.text,
                  fwMode: true,
                ).marginOnly(left: 20, right: 20, top: 5, bottom: 5),
                LabeledInputField(
                  controller: _recommenderController,
                  label: ' 추천인 전화번호 입력',
                  hintText: '추천인의 전화번호를 입력해주세요.',
                  errorText: null,
                  keyboardType: const TextInputType.numberWithOptions(signed: true,decimal: true),
                ).marginOnly(left: 20, right: 20, top: 5, bottom: 5),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: IntrinsicHeight(
        child: Column(
          children: [
            const CustomerCenterBox(),
            InkWell(
              onTap: () {
                if(_nameController.text.isNullOrEmpty || _phoneController.text.isNullOrEmpty || _companyNameController.text.isNullOrEmpty|| _fwController.text.isNullOrEmpty){
                  showError('오류', '필수항목을 전부 입력해주세요.');
                  return;
                }

                Map<String,String> createUserMap = {};
                createUserMap['userId'] = _phoneController.text;
                createUserMap['userPwd'] = _fwController.text;
                createUserMap['userName'] = _nameController.text;
                createUserMap['userCompanyName'] = _companyNameController.text;
                createUserMap['userPhone'] = _phoneController.text;
                createUserMap['userToken'] = '';
                createUserMap['userRecPhone'] = _recommenderController.text;
                _viewModel.submit(createUserMap);

              },
              child: Container(
                width: getScreenWidth(context),
                decoration: const BoxDecoration(color: AppColors.boxDark),
                child: Text(
                  '가입하기',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.textStyleBold.copyWith(fontSize: 28, color: Colors.white),
                ).paddingOnly(top: 15, bottom: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
