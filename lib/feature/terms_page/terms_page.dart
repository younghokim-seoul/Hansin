import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hansin/domain/entity/certify_entity.dart';
import 'package:hansin/feature/terms_page/terms_providers.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/extension/margin_extension.dart';
import 'package:hansin/utils/file/file_utils.dart';
import 'package:hansin/utils/helper_message.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:hansin/utils/screen_util.dart';
import 'package:yaru_icons/yaru_icons.dart';

@RoutePage()
class TermsPage extends ConsumerStatefulWidget {
  static const routeName = '/terms';

  const TermsPage({super.key});

  @override
  ConsumerState createState() => _TermsPageState();
}

class _TermsPageState extends ConsumerState<TermsPage> {
  @override
  Widget build(BuildContext context) {
    final selectState = ref.watch(selectStateProvider);

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
        title: Text("이용 약관",
            style: AppTextStyle.textStyleBold
                .copyWith(fontSize: 20, color: Colors.white)),
        centerTitle: true,
        elevation: 0.0,
        shape: const Border(
            bottom: BorderSide(color: Color(0xFF485057), width: 1)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 32, 0, 30),
                height: 60,
                child: Text(
                  "반가워요! 한신 오신걸 환영합니다. \n이용약관에 동의해주세요.",
                  overflow: TextOverflow.clip,
                  style: AppTextStyle.textStyleBold.copyWith(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),
              InkWell(
                onTap: () {
                  ref.watch(selectStateProvider.notifier).checkAll();
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                  width: getScreenWidth(context),
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: selectState.all
                        ? AppColors.boxDark.withOpacity(0.2)
                        : Colors.grey.withOpacity(0.2),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('전체동의',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Icon(selectState.all
                          ? YaruIcons.checkbox_checked_filled
                          : YaruIcons.checkbox)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  ref.watch(selectStateProvider.notifier).selectedConsent1();
                },
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xFF000000), width: 1))),
                        child: GestureDetector(
                          onTap: () {
                            fromAsset(
                              'assets/images/terms_of_use.pdf',
                              'terms_of_use.pdf',
                            ).then((value) => context.router
                                .push(TermsDetailRoute(path: value.path)));
                          },
                          child: const Text('한신 이용약관(필수)',
                              overflow: TextOverflow.fade,
                              softWrap: true,
                              style: TextStyle(
                                  color: Color(0xFF000000), fontSize: 16)),
                        ),
                      ),
                      Icon(selectState.requiredConsent1
                          ? YaruIcons.checkbox_checked_filled
                          : YaruIcons.checkbox)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  ref.watch(selectStateProvider.notifier).selectedConsent2();
                },
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color(0xFF000000), width: 1))),
                          child: GestureDetector(
                            onTap: () {
                              fromAsset(
                                'assets/images/terms_of_privacy.pdf',
                                'terms_of_privacy.pdf',
                              ).then((value) => context.router
                                  .push(TermsDetailRoute(path: value.path)));
                            },
                            child: const Text('한신에어시스템(주) 개인정보처리약관(필수)',
                                overflow: TextOverflow.fade,
                                softWrap: true,
                                style: TextStyle(
                                    color: Color(0xFF000000), fontSize: 16)),
                          ),
                        ),
                      ),
                      Icon(selectState.requiredConsent2
                          ? YaruIcons.checkbox_checked_filled
                          : YaruIcons.checkbox)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  ref.watch(selectStateProvider.notifier).selectedConsent3();
                },
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xFF000000), width: 1))),
                        child: GestureDetector(
                          onTap: () {
                            fromAsset(
                              'assets/images/terms_use_admin.pdf',
                              'terms_use_admin.pdf',
                            ).then((value) => context.router
                                .push(TermsDetailRoute(path: value.path)));
                          },
                          child: const Text('광고수신동의 약관(선택)',
                              overflow: TextOverflow.fade,
                              softWrap: true,
                              style: TextStyle(
                                  color: Color(0xFF000000), fontSize: 16)),
                        ),
                      ),
                      Icon(selectState.requiredConsent3
                          ? YaruIcons.checkbox_checked_filled
                          : YaruIcons.checkbox)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () async {
          if (selectState.isEnable) {
            final result = await context.router.push(const PassCertifyRoute());
            Log.d("result.. $result");
            if (result != null) {
              Log.d("::");
              final model = result as CertifyEntity;
              if (model.code == 0) {
                AppMessage.showMessage("인증에 성공 하였습니다.");
                if (context.mounted) {
                  context.router.pushAndPopUntil(SignUpRoute(certifyEntity: model), predicate: (route) => route.settings.name == LoginRoute.name);
                }
              } else {
                AppMessage.showMessage("인증에 실패 하였습니다.");
              }
            }
          }
        },
        child: Container(
          width: getScreenWidth(context),
          decoration: selectState.isEnable
              ? const BoxDecoration(color: AppColors.boxDark)
              : const BoxDecoration(color: AppColors.textFaded),
          child: Text(
            '다음',
            textAlign: TextAlign.center,
            style: AppTextStyle.textStyleBold
                .copyWith(fontSize: 28, color: Colors.white),
          ).paddingOnly(top: 15, bottom: 15),
        ),
      ),
    );
  }
}
