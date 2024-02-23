import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hansin/domain/repository/setting_repository.dart';
import 'package:hansin/injector.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/extension/value_extension.dart';
import 'package:hansin/utils/router/app_route.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  static const routeName = '/splash';

  const SplashPage({super.key});

  @override
  ConsumerState createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  final SettingRepository _settingRepository = getIt.get();

  @override
  void initState() {
    super.initState();
    checkLoginUser();
  }

  void checkLoginUser() {
    _settingRepository.getUserId().then((userIds) {
      Log.d(":::userIds... $userIds");
      if (!userIds.isNullOrEmpty) {
        context.router.replace(const HomeRoute());
      } else {
        context.router.replace(const LoginRoute());
      }
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
