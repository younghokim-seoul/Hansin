import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/extension/margin_extension.dart';
import 'package:hansin/utils/screen_util.dart';
import 'package:hansin/widget/customer_center/customer_center_box.dart';
import 'package:hansin/widget/dialog/dialogs.dart';
import 'package:hansin/widget/label_text_filed/labeled_input_field.dart';

@RoutePage()
class SignUpPage extends ConsumerStatefulWidget {
  static const routeName = '/sign_up';

  const SignUpPage({super.key});

  @override
  ConsumerState createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _fwController = TextEditingController();
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _recommenderController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
                Text(
                  '회원가입',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.textStyleBold
                      .copyWith(fontSize: 18, color: Colors.black),
                ).paddingOnly(top: 10, bottom: 10),
                LabeledInputField(
                  controller: _nameController,
                  label: '* 성명',
                  hintText: '성명을 입력해주세요.',
                  errorText: null,
                  keyboardType: TextInputType.name,
                ).marginOnly(left: 20, right: 20, top: 5, bottom: 5),
                LabeledInputField(
                  controller: _phoneController,
                  label: '* 전화번호',
                  hintText: '전화 번호를 입력해주세요.',
                  errorText: null,
                  keyboardType: TextInputType.phone,
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
                  keyboardType: TextInputType.phone,
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
                showError('오류', '전화번호가 일치하지 않습니다.');
              },
              child: Container(
                width: getScreenWidth(context),
                decoration: const BoxDecoration(color: AppColors.boxDark),
                child: Text(
                  '가입하기',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.textStyleBold
                      .copyWith(fontSize: 28, color: Colors.white),
                ).paddingOnly(top: 15, bottom: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
