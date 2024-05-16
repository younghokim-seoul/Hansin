import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:hansin/assets/assets.gen.dart';
import 'package:hansin/domain/repository/item_repository.dart';
import 'package:hansin/feature/home/component/home_list_box.dart';
import 'package:hansin/injector.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

final callProvider = FutureProvider<String>((ref) async {
  final repository = getIt<ItemRepository>();
  Map<String, String> param = {};
  param['contentName'] = 'call';
  return repository.getContentInfo(param).then((value) => value.contentImage);
});

@RoutePage()
class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Gap(5),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 16),
                child: InkWell(
                  onTap: () => context.router.push(const SettingRoute()),
                  child: const Icon(
                    Icons.menu,
                    size: 32,
                    color: AppColors.boxDark,
                  ),
                ),
              )),
          Assets.images.titleLogo.image(height: 100, fit: BoxFit.fill),
          const Gap(10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: HomeListBox(
                      title: '매장 안내 및 방문 예약',
                      bgColor: AppColors.boxDark,
                      onTap: () {
                        context.router.push(const ShowRoomReservationRoute());
                      }),
                ),
                Flexible(
                  child: HomeListBox(
                    title: '제품 재고 현황',
                    bgColor: AppColors.boxLight,
                    onTap: () => context.router.push(const LiveStockRoute()),
                  ),
                ),
                Flexible(
                  child: HomeListBox(
                    title: '!필수 확인 사항!',
                    bgColor: AppColors.boxDark,
                    onTap: () => context.router.push(const VerificationRoute()),
                  ),
                ),
              ],
            ),
          ),
          const Gap(10),
          Consumer(builder: (context, ref, child) {
            final call = ref.watch(callProvider);
            return call.maybeWhen(
              data: (v) => CachedNetworkImage(
                fadeInDuration: const Duration(milliseconds: 100),
                fadeOutDuration: const Duration(milliseconds: 200),
                imageUrl: v,
                imageBuilder: (context, imageProvider) => Image(
                  image: imageProvider,
                  filterQuality: FilterQuality.medium,
                  height: 100,
                  fit: BoxFit.fill,
                ),
                placeholder: (context, url) => const SizedBox.square(
                  child: YaruCircularProgressIndicator(
                    strokeWidth: 2,
                    color: AppColors.boxDark,
                  ),
                ),
                errorWidget: (context, url, error) => const SizedBox.shrink(),
              ),
              orElse: () => const SizedBox.shrink(),
            );
          }),
          const Gap(10),
        ]),
      ),
    );
  }
}
