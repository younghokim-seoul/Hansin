import 'package:auto_route/auto_route.dart';
import 'package:hansin/feature/pass_certify_page.dart';


part 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            path: PassCertifyPage.routeName, page: PassCertifyRoute.page, initial: true),
      ];
}
