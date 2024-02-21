import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hansin/feature/home/home_page.dart';
import 'package:hansin/feature/login/login_page.dart';
import 'package:hansin/feature/mega_sale/mega_sale_page.dart';
import 'package:hansin/feature/show_room/reservation_register/reservation_register_page.dart';
import 'package:hansin/feature/show_room/show_room_reservation_page.dart';
import 'package:hansin/feature/sign_up/sign_up_page.dart';
import 'package:hansin/feature/stock/live_stock_page.dart';
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
        CupertinoRoute(
            path: VerificationPage.routeName, page: VerificationRoute.page),
        CupertinoRoute(path: LoginPage.routeName, page: LoginRoute.page),
        CupertinoRoute(path: MegaSalePage.routeName, page: MegaSaleRoute.page),
        CupertinoRoute(
            path: ShowRoomReservationPage.routeName,
            page: ShowRoomReservationRoute.page),
        CupertinoRoute(
            path: LiveStockPage.routeName, page: LiveStockRoute.page),
        CupertinoRoute(path: SignUpPage.routeName, page: SignUpRoute.page),
        CupertinoRoute(
            path: ReservationRegisterPage.routeName, page: ReservationRegisterRoute.page),
      ];
}
