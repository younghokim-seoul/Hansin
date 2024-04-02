import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hansin/feature/mega_sale/mega_sale_state.dart';
import 'package:hansin/feature/mega_sale/mega_sale_view_model.dart';
import 'package:hansin/injector.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/extension/margin_extension.dart';
import 'package:hansin/utils/extension/value_extension.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:hansin/utils/screen_util.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

@RoutePage()
class MegaSalePage extends StatefulWidget {
  static const routeName = '/mega_sale';

  const MegaSalePage({super.key, required this.contentName});

  final String contentName;

  @override
  State<MegaSalePage> createState() => _MegaSalePageState();
}

class _MegaSalePageState extends State<MegaSalePage> {
  final _viewModel = getIt<MegaSaleViewModel>();

  @override
  void initState() {
    super.initState();
    _viewModel.onLoadData(widget.contentName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            buildMegaSaleEventView(),
            buildBottomView(),
          ],
        ),
      ),
    );
  }

  Widget buildMegaSaleEventView() =>
      _viewModel.megaSaleUiState.ui(builder: (context, state) {
        if (!state.hasData || state.data.isNullOrEmpty) return Container();

        if (state.data is Success) {
          final model = state.data as Success;

          return Expanded(
              child: SingleChildScrollView(
            child: CachedNetworkImage(
              fadeInDuration: const Duration(milliseconds: 100),
              fadeOutDuration: const Duration(milliseconds: 200),
              imageUrl: model.entity.contentImage,
              imageBuilder: (context, imageProvider) => Image(
                image: imageProvider,
                filterQuality: FilterQuality.medium,
                fit: BoxFit.fitHeight,
              ),
              placeholder: (context, url) => const SizedBox.square(
                child: YaruCircularProgressIndicator(
                  strokeWidth: 2,
                  color: AppColors.boxDark,
                ),
              ),
              errorWidget: (context, url, error) => const Icon(YaruIcons.error),
            ),
          ));
        }

        if (state is Loading) {}

        if (state is Error) {}

        return Container();
      });

  Widget buildBottomView() => Container(
        margin: const EdgeInsets.all(0),
        width: getScreenWidth(context),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          color: AppColors.boxDark,
        ),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              child: InkWell(
                onTap: () => context.router
                    .popUntil((route) => route.settings.name == HomeRoute.name),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    color: AppColors.iconLight,
                  ),
                  child: Text(
                    '기본 화면으로',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.textStyleBold
                        .copyWith(fontSize: 28, color: Colors.black),
                  ).paddingOnly(top: 15, bottom: 15),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                  onTap: () => context.router.pop(),
                  child: Text(
                    '이전 화면으로',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.textStyleBold
                        .copyWith(fontSize: 28, color: Colors.white),
                  ).paddingOnly(top: 15, bottom: 15)),
            ),
          ],
        ),
      );
}
