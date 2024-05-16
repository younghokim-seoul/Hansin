import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hansin/assets/assets.gen.dart';
import 'package:hansin/data/model/response/content_info_vo.dart';
import 'package:hansin/feature/stock/live_stock_state.dart';
import 'package:hansin/feature/stock/live_stock_view_model.dart';
import 'package:hansin/injector.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/extension/margin_extension.dart';
import 'package:hansin/utils/extension/value_extension.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:hansin/utils/screen_util.dart';

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
      backgroundColor: const Color(0xff8EBABF),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                children: [
                  const Gap(15),
                  Assets.images.icStockTitle.image(height: 100, fit: BoxFit.fill),
                  Text(
                    '재고 현황',
                    style: AppTextStyle.textStyleBold.copyWith(
                      fontSize: 42,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: AppColors.lightShadow.withOpacity(0.7),
                          offset: const Offset(0, 4),
                          blurRadius: 16,
                        ),
                      ],
                    ),
                  ).paddingOnly(left: 10, right: 10),
                  const Gap(15),
                  Expanded(
                    child: SingleChildScrollView(
                      child: buildStockView(),
                    ),
                  ),
                ],
              ),
            ),
            buildBottomView(),
          ],
        ),
      ),
    );
  }


  Widget buildStockView() => Stack(
        children: [
          Container(
            width: getScreenWidth(context),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white.withOpacity(1), width: 3),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Gap(30),
                Text('한신기계 표준형 제품', style: AppTextStyle.textStyleBold.copyWith(fontSize: 32, color: Colors.white)),
                const Gap(15),
                StockInformationView(viewModel: _viewModel),
                Container(
                  width: getScreenWidth(context),
                  margin: const EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        '부품•소모품 전품목',
                        textAlign: TextAlign.start,
                        style: AppTextStyle.textStyleBold.copyWith(fontSize: 32, color: AppColors.boxDark),
                      ),
                      Text(
                        '상시 보유',
                        textAlign: TextAlign.start,
                        style: AppTextStyle.textStyleBold.copyWith(fontSize: 20, color: AppColors.boxDark),
                      )
                    ],
                  ),
                ),
                const Gap(10),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: StockTimeStampView(
              viewModel: _viewModel,
            ),
          ),
        ],
      );

  Widget buildLogoView() => DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(500)),
        ),
        child: Text(
          'HANSIN AC',
          textAlign: TextAlign.center,
          style: AppTextStyle.textStyleBold.copyWith(fontSize: 16, color: AppColors.boxDark),
        ).paddingOnly(left: 10, right: 10),
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
              '기본 화면으로 돌아가기',
              textAlign: TextAlign.center,
              style: AppTextStyle.textStyleBold.copyWith(fontSize: 28, color: Colors.white),
            ).paddingOnly(top: 15, bottom: 15),
          ),
        ),
      );
}

class StockTimeStampView extends StatelessWidget {
  const StockTimeStampView({
    super.key,
    required this.viewModel,
  });

  final LiveStockViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.orangeAccent,
      ),
      child: _buildDateView(),
    );
  }

  Widget _buildDateView() => Text(
        "이번주 재고 현황",
        textAlign: TextAlign.center,
        style: AppTextStyle.textStyleBold.copyWith(fontSize: 15, color: Colors.white),
      ).paddingSymmetric(horizontal: 20, vertical: 5);
}

class StockInformationView extends StatelessWidget {
  const StockInformationView({super.key, required this.viewModel});

  final LiveStockViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
              onTap: () => context.router.push(MegaSaleRoute(contentName: ContentType.screw.name)),
              borderRadius: BorderRadius.circular(22),
              child: Container(
                margin: const EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.textDark,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      )
                    ]),
                padding: const EdgeInsets.all(10),
                child: viewModel.liveStockUiState.ui(builder: (context, state) {
                  if (!state.hasData || state.data.isNullOrEmpty) {
                    return Container();
                  }

                  if (state.data is Success) {
                    final model = state.data as Success;
                    return Column(
                      children: [
                        Text(
                          model.entity[0].itemName,
                          textAlign: TextAlign.start,
                          style: AppTextStyle.textStyleBold.copyWith(
                            fontSize: 32,
                            color: AppColors.boxDark,
                            shadows: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                blurRadius: 5.0,
                                offset: const Offset(0, 3),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "총 ${model.entity[0].itemCnt}대",
                          textAlign: TextAlign.start,
                          style: AppTextStyle.textStyleBold.copyWith(fontSize: 23, color: Colors.black),
                        ),
                        Text(
                          "> 더보기",
                          textAlign: TextAlign.start,
                          style: AppTextStyle.textStyleBold.copyWith(fontSize: 18, color: AppColors.wine),
                        )
                      ],
                    );
                  }
                  return Container();
                }),
              )),
        ),
        Expanded(
          child: InkWell(
            onTap: () => context.router.push(MegaSaleRoute(contentName: ContentType.piston.name)),
            borderRadius: BorderRadius.circular(22),
            child: Container(
              margin: const EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.textDark,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  )
                ],
              ),
              padding: const EdgeInsets.all(10),
              child: viewModel.liveStockUiState.ui(builder: (context, state) {
                if (!state.hasData || state.data.isNullOrEmpty) {
                  return Container();
                }

                if (state.data is Success) {
                  final model = state.data as Success;
                  return Column(
                    children: [
                      Text(
                        model.entity[1].itemName,
                        textAlign: TextAlign.start,
                        style: AppTextStyle.textStyleBold.copyWith(
                          fontSize: 32,
                          color: AppColors.boxDark,
                          shadows: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 5.0,
                              offset: const Offset(0, 3),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "총 ${model.entity[1].itemCnt}대",
                        textAlign: TextAlign.start,
                        style: AppTextStyle.textStyleBold.copyWith(fontSize: 23, color: Colors.black),
                      ),
                      Text(
                        "> 더보기",
                        textAlign: TextAlign.start,
                        style: AppTextStyle.textStyleBold.copyWith(fontSize: 18, color: AppColors.wine),
                      )
                    ],
                  );
                }
                return Container();
              }),
            ),
          ),
        ),
      ],
    );
  }
}
