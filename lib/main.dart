import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hansin/injector.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:yaru/yaru.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(ProviderScope(child: App()));
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final AppTheme appTheme = AppTheme();
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return YaruTheme(
      builder: (context,custom,child) =>  MaterialApp.router(
        theme: custom.theme,
        darkTheme: custom.darkTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter.config(),
      ),
    );
  }
}
