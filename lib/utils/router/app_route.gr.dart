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
    PassCertifyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PassCertifyPage(),
      );
    }
  };
}

/// generated route for
/// [PassCertifyPage]
class PassCertifyRoute extends PageRouteInfo<void> {
  const PassCertifyRoute({List<PageRouteInfo>? children})
      : super(
          PassCertifyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PassCertifyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
