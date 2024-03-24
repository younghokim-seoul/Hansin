import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hansin/feature/login/login_page.dart';
import 'package:hansin/feature/login/phone/phone_join_state.dart';
import 'package:hansin/feature/login/phone/phone_join_view_model.dart';
import 'package:hansin/injector.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/extension/margin_extension.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:hansin/utils/screen_util.dart';
import 'package:hansin/widget/dialog/dialogs.dart';



@RoutePage()
class PhoneJoinPage extends ConsumerStatefulWidget {
  static const routeName = '/phone_join';

  const PhoneJoinPage({super.key});

  @override
  ConsumerState createState() => _PhoneJoinPageState();
}

class _PhoneJoinPageState extends ConsumerState<PhoneJoinPage> {
  final _viewModel = getIt<PhoneJoinViewModel>();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _viewModel.loginUiState.stream.listen((state) async {
      Log.d(":::state => $state");
      if (state is Loading) {}

      if (state is Success) {
        context.router.pushAndPopUntil(const HomeRoute(), predicate: (route) => route.settings.name == LoginPage.routeName);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 4.0,
        backgroundColor: AppColors.boxDark,
        leading: IconButton(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          icon: const Icon(CupertinoIcons.chevron_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("전화번호로 로그인",
            style: AppTextStyle.textStyleBold
                .copyWith(fontSize: 20, color: Colors.white)),
        centerTitle: true,
        elevation: 0.0,
        shape: const Border(
            bottom: BorderSide(color: Color(0xFF485057), width: 1)),
      ),
      body: _buildForm(),
      bottomNavigationBar:
          _viewModel.isActiveLogin.ui(builder: (context, isClickable) {
        return InkWell(
          onTap: () {
            _viewModel.login(_phoneController.text, _passWordController.text);
          },
          child: SizedBox(
            width: getScreenWidth(context),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color:
                    isClickable.data == true ? AppColors.boxDark : Colors.grey,
              ),
              child: Text(
                '로그인하기',
                textAlign: TextAlign.center,
                style: AppTextStyle.textStyleBold
                    .copyWith(fontSize: 28, color: Colors.white),
              ).paddingOnly(top: 10, bottom: 10),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildForm() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: viewportConstraints.maxHeight),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 36, 0, 0),
                  child: SizedBox(
                    width: getScreenWidth(context),
                    child: Text(
                      "전화번호",
                      style: AppTextStyle.textStyleBold
                          .copyWith(color: AppColors.cardDark, fontSize: 16),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xffEDEDED),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextField(
                    controller: _phoneController,
                    style: AppTextStyle.textStyleBold
                        .copyWith(color: AppColors.cardDark, fontSize: 16),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "전화번호를 입력하세요",
                      hintStyle: AppTextStyle.textStyleBold
                          .copyWith(color: Colors.grey, fontSize: 16),
                      fillColor: Colors.transparent,
                      filled: true,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                    cursorColor: AppColors.boxDark,
                    onChanged: (text) {
                      _checkClickable();
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 36, 0, 0),
                  child: SizedBox(
                    width: getScreenWidth(context),
                    child: Text(
                      "비밀번호",
                      style: AppTextStyle.textStyleBold
                          .copyWith(color: AppColors.cardDark, fontSize: 16),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xffEDEDED),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    controller: _passWordController,
                    style: AppTextStyle.textStyleBold
                        .copyWith(color: AppColors.cardDark, fontSize: 16),
                    decoration: InputDecoration(
                      hintText: "비밀번호를 입력하세요",
                      hintStyle: AppTextStyle.textStyleBold
                          .copyWith(color: Colors.grey, fontSize: 16),
                      fillColor: Colors.transparent,
                      filled: true,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                    obscureText: true,
                    cursorColor: AppColors.boxDark,
                    onChanged: (text) {
                      _checkClickable();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _checkClickable() {
    if (_phoneController.text.isNotEmpty &&
        _passWordController.text.isNotEmpty) {
      _viewModel.setClickable(true);
    } else {
      _viewModel.setClickable(false);
    }
  }
}
