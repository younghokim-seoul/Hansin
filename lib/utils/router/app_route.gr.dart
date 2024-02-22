// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LiveStockRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LiveStockPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    MegaSaleRoute.name: (routeData) {
      final args = routeData.argsAs<MegaSaleRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MegaSalePage(
          key: args.key,
          contentName: args.contentName,
        ),
      );
    },
    PhoneJoinRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PhoneJoinPage(),
      );
    },
    ReservationRegisterRoute.name: (routeData) {
      final args = routeData.argsAs<ReservationRegisterRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ReservationRegisterPage(
          key: args.key,
          selectedDateTime: args.selectedDateTime,
        ),
      );
    },
    ShowRoomReservationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShowRoomReservationPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    TermsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TermsDetailRouteArgs>(
          orElse: () => const TermsDetailRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TermsDetailPage(
          key: args.key,
          path: args.path,
        ),
      );
    },
    TermsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TermsPage(),
      );
    },
    VerificationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VerificationPage(),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LiveStockPage]
class LiveStockRoute extends PageRouteInfo<void> {
  const LiveStockRoute({List<PageRouteInfo>? children})
      : super(
          LiveStockRoute.name,
          initialChildren: children,
        );

  static const String name = 'LiveStockRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MegaSalePage]
class MegaSaleRoute extends PageRouteInfo<MegaSaleRouteArgs> {
  MegaSaleRoute({
    Key? key,
    required String contentName,
    List<PageRouteInfo>? children,
  }) : super(
          MegaSaleRoute.name,
          args: MegaSaleRouteArgs(
            key: key,
            contentName: contentName,
          ),
          initialChildren: children,
        );

  static const String name = 'MegaSaleRoute';

  static const PageInfo<MegaSaleRouteArgs> page =
      PageInfo<MegaSaleRouteArgs>(name);
}

class MegaSaleRouteArgs {
  const MegaSaleRouteArgs({
    this.key,
    required this.contentName,
  });

  final Key? key;

  final String contentName;

  @override
  String toString() {
    return 'MegaSaleRouteArgs{key: $key, contentName: $contentName}';
  }
}

/// generated route for
/// [PhoneJoinPage]
class PhoneJoinRoute extends PageRouteInfo<void> {
  const PhoneJoinRoute({List<PageRouteInfo>? children})
      : super(
          PhoneJoinRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhoneJoinRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReservationRegisterPage]
class ReservationRegisterRoute
    extends PageRouteInfo<ReservationRegisterRouteArgs> {
  ReservationRegisterRoute({
    Key? key,
    required DateTime selectedDateTime,
    List<PageRouteInfo>? children,
  }) : super(
          ReservationRegisterRoute.name,
          args: ReservationRegisterRouteArgs(
            key: key,
            selectedDateTime: selectedDateTime,
          ),
          initialChildren: children,
        );

  static const String name = 'ReservationRegisterRoute';

  static const PageInfo<ReservationRegisterRouteArgs> page =
      PageInfo<ReservationRegisterRouteArgs>(name);
}

class ReservationRegisterRouteArgs {
  const ReservationRegisterRouteArgs({
    this.key,
    required this.selectedDateTime,
  });

  final Key? key;

  final DateTime selectedDateTime;

  @override
  String toString() {
    return 'ReservationRegisterRouteArgs{key: $key, selectedDateTime: $selectedDateTime}';
  }
}

/// generated route for
/// [ShowRoomReservationPage]
class ShowRoomReservationRoute extends PageRouteInfo<void> {
  const ShowRoomReservationRoute({List<PageRouteInfo>? children})
      : super(
          ShowRoomReservationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShowRoomReservationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TermsDetailPage]
class TermsDetailRoute extends PageRouteInfo<TermsDetailRouteArgs> {
  TermsDetailRoute({
    Key? key,
    String? path,
    List<PageRouteInfo>? children,
  }) : super(
          TermsDetailRoute.name,
          args: TermsDetailRouteArgs(
            key: key,
            path: path,
          ),
          initialChildren: children,
        );

  static const String name = 'TermsDetailRoute';

  static const PageInfo<TermsDetailRouteArgs> page =
      PageInfo<TermsDetailRouteArgs>(name);
}

class TermsDetailRouteArgs {
  const TermsDetailRouteArgs({
    this.key,
    this.path,
  });

  final Key? key;

  final String? path;

  @override
  String toString() {
    return 'TermsDetailRouteArgs{key: $key, path: $path}';
  }
}

/// generated route for
/// [TermsPage]
class TermsRoute extends PageRouteInfo<void> {
  const TermsRoute({List<PageRouteInfo>? children})
      : super(
          TermsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VerificationPage]
class VerificationRoute extends PageRouteInfo<void> {
  const VerificationRoute({List<PageRouteInfo>? children})
      : super(
          VerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
