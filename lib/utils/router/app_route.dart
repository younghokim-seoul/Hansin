import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hansin/domain/entity/certify_entity.dart';
import 'package:hansin/feature/home/home_page.dart';
import 'package:hansin/feature/login/login_page.dart';
import 'package:hansin/feature/login/phone/phone_join_page.dart';
import 'package:hansin/feature/mega_sale/mega_sale_page.dart';
import 'package:hansin/feature/setting/setting_page.dart';
import 'package:hansin/feature/show_room/reservation_check/reservation_check_page.dart';
import 'package:hansin/feature/show_room/reservation_register/reservation_register_page.dart';
import 'package:hansin/feature/show_room/reservation_register/reservation_register_provider.dart';
import 'package:hansin/feature/show_room/show_room_reservation_page.dart';
import 'package:hansin/feature/sign_up/certify/pass_certify_page.dart';
import 'package:hansin/feature/sign_up/passwod_reset/password_reset_page.dart';
import 'package:hansin/feature/sign_up/sign_up_page.dart';
import 'package:hansin/feature/splash/splash_page.dart';
import 'package:hansin/feature/stock/live_stock_page.dart';
import 'package:hansin/feature/terms_page/terms_page.dart';
import 'package:hansin/feature/terms_page/viewer/terms_detail_page.dart';
import 'package:hansin/feature/verification/verification_page.dart';

part 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            path: SplashPage.routeName, page: SplashRoute.page, initial: true),
        AutoRoute(
          path: HomePage.routeName,
          page: HomeRoute.page,
        ),
        AutoRoute(path: LoginPage.routeName, page: LoginRoute.page),
        CupertinoRoute(
            path: VerificationPage.routeName, page: VerificationRoute.page),
        CupertinoRoute(path: MegaSalePage.routeName, page: MegaSaleRoute.page),
        CupertinoRoute(
            path: ShowRoomReservationPage.routeName,
            page: ShowRoomReservationRoute.page),
        CupertinoRoute(
            path: LiveStockPage.routeName, page: LiveStockRoute.page),
        CupertinoRoute(path: SignUpPage.routeName, page: SignUpRoute.page),
        CupertinoRoute(
            path: ReservationRegisterPage.routeName,
            page: ReservationRegisterRoute.page),
        CupertinoRoute(
            path: PassCertifyPage.routeName, page: PassCertifyRoute.page),
        CupertinoRoute(
            path: PhoneJoinPage.routeName, page: PhoneJoinRoute.page),
        CupertinoRoute(path: TermsPage.routeName, page: TermsRoute.page),
        CupertinoRoute(
            path: TermsDetailPage.routeName, page: TermsDetailRoute.page),
        CupertinoRoute(
            path: ReservationCheckPage.routeName,
            page: ReservationCheckRoute.page),
        CupertinoRoute(path: SettingPage.routeName, page: SettingRoute.page),
        CupertinoRoute(path: PasswordResetPage.routeName, page: PasswordResetRoute.page),
      ];
}
