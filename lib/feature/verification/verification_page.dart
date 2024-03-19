import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hansin/assets/assets.gen.dart';
import 'package:hansin/data/model/response/content_info_vo.dart';
import 'package:hansin/feature/verification/verification_state.dart';
import 'package:hansin/feature/verification/verification_view_model.dart';
import 'package:hansin/injector.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/extension/margin_extension.dart';
import 'package:hansin/utils/extension/value_extension.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:hansin/utils/screen_util.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

@RoutePage()
class VerificationPage extends StatefulWidget {
  static const routeName = '/verification';

  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final _viewModel = getIt<VerificationModel>();

  @override
  void initState() {
    super.initState();
    _viewModel.onLoadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Gap(20),
          Assets.images.titleLogo.image(height: 70,fit: BoxFit.fill),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(10),
                  buildVolumeCustomerService(),
                  const Gap(10),
                  buildSpecialOfferView(),
                  const Gap(10),
                ],
              ),
            ),
          ),
          buildBottomView()
          // const YaruMasterDetailPage(tileBuilder: tileBuilder, pageBuilder: pageBuilder)
        ]),
      ),
    );
  }

  Widget buildSpecialOfferView() =>
      _viewModel.verificationUiState.ui(builder: (context, state) {
        if (!state.hasData || state.data.isNullOrEmpty) return Container();

        if (state.data is Success) {
          final model = state.data as Success;

          return CachedNetworkImage(
            fadeInDuration: const Duration(milliseconds: 100),
            fadeOutDuration: const Duration(milliseconds: 200),
            imageUrl: model.entity.contentImage,
            imageBuilder: (context, imageProvider) => Image(
              image: imageProvider,
              filterQuality: FilterQuality.medium,
              fit: BoxFit.fitHeight,
            ),
            placeholder: (context, url) =>
            const YaruCircularProgressIndicator(strokeWidth: 2),
            errorWidget: (context, url, error) => const Icon(YaruIcons.error),
          );
        }

        if (state is Loading) {}

        if (state is Error) {}

        return Container();
      });

  Widget buildVolumeCustomerService() => InkWell(
    onTap: () => context.router.push(MegaSaleRoute(contentName: ContentType.buy.name)),
    child: Container(
      width: getScreenWidth(context) * 0.95,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(22)),
        color: AppColors.boxDark,
      ),
      child: Text(
        '대량 구매\n고객 대상 서비스',
        textAlign: TextAlign.center,
        style: AppTextStyle.textStyleBold
            .copyWith(fontSize: 28, color: Colors.white),
      ).marginOnly(bottom: 30, top: 30),
    ),
  );

  Widget buildBottomView() => InkWell(
        onTap: () {
          context.router.pop();
        },
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: Container(
          margin: const EdgeInsets.all(0),
          width: getScreenWidth(context),
          child: DecoratedBox(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(0)),
              color: AppColors.boxDark,
            ),
            child: Text(
              '기본 화면으로',
              textAlign: TextAlign.center,
              style: AppTextStyle.textStyleBold
                  .copyWith(fontSize: 28, color: Colors.white),
            ).paddingOnly(top: 15, bottom: 15),
          ),
        ),
      );
}
