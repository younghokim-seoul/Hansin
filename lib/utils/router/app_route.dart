import 'package:auto_route/auto_route.dart';
import 'package:hansin/feature/home/home_page.dart';
import 'package:hansin/feature/verification/verification_page.dart';

part 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: HomePage.routeName,
          page: HomeRoute.page,
          initial: true,
        ),
        CupertinoRoute(path: VerificationPage.routeName, page: VerificationRoute.page),
      ];
}
