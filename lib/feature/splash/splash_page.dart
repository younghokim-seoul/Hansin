import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hansin/feature/login/login_providers.dart';
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

  @override
  void initState() {
    super.initState();
    final isLogin = !ref.read(userCacheProvider.notifier).isNullOrEmpty;

    Log.d(":::isLogin... $isLogin");

    if(isLogin){
      context.router.replace(const LoginRoute());
    }else{
      context.router.replace(const HomeRoute());
    }
  }
  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
