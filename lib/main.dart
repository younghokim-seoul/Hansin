import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hansin/injector.dart';
import 'package:hansin/utils/router/app_route.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:yaru/yaru.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();
  configureDependencies();
  runApp(ProviderScope(child: App()));
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brightness = theme.brightness;
    SystemChrome.setSystemUIOverlayStyle(
      brightness == Brightness.dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
    );
    return YaruTheme(
      builder: (context, custom, child) => MaterialApp.router(
        theme: custom.theme,
        darkTheme: custom.darkTheme,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        routerConfig: appRouter.config(),
      ),
    );
  }
}
