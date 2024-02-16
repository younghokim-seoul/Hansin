import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hansin/feature/mega_sale/mega_sale_state.dart';
import 'package:hansin/feature/stock/live_stock_view_model.dart';
import 'package:hansin/injector.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/extension/margin_extension.dart';
import 'package:hansin/utils/extension/value_extension.dart';
import 'package:hansin/utils/screen_util.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

@RoutePage()
class LiveStockPage extends StatefulWidget {
  static const routeName = '/live_stock';

  const LiveStockPage({super.key});

  @override
  State<LiveStockPage> createState() => _LiveStockPageState();
}

class _LiveStockPageState extends State<LiveStockPage> {
  final _viewModel = getIt<LiveStockViewModel>();

  @override
  void initState() {
    super.initState();
    _viewModel.onLoadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            buildLiveStockEventView(),
            buildBottomView(),
          ],
        ),
      ),
    );
  }

  Widget buildLiveStockEventView() =>
      _viewModel.liveStockUiState.ui(builder: (context, state) {
        if (!state.hasData || state.data.isNullOrEmpty) return Container();

        if (state.data is Success) {
          final model = state.data as Success;

          return Expanded(
              child: SingleChildScrollView(
            child: CachedNetworkImage(
              fadeInDuration: const Duration(milliseconds: 100),
              fadeOutDuration: const Duration(milliseconds: 200),
              imageUrl: model.entity.contentImage,
              placeholder: (context, url) =>
                  const YaruCircularProgressIndicator(strokeWidth: 2),
              errorWidget: (context, url, error) => const Icon(YaruIcons.error),
            ),
          ));
        }

        if (state is Loading) {}

        if (state is Error) {}

        return Container();
      });

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
          '기본 화면으로 돌아가기',
          textAlign: TextAlign.center,
          style: AppTextStyle.textStyleBold
              .copyWith(fontSize: 28, color: Colors.white),
        ).paddingOnly(top: 15, bottom: 15),
      ),
    ),
  );
}
