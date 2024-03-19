import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/widget/dialog/dialogs.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class PassCertifyPage extends ConsumerStatefulWidget {
  static const routeName = '/pass_certify';

  const PassCertifyPage({super.key});

  @override
  ConsumerState createState() => _PassCertifyPageState();
}

class _PassCertifyPageState extends ConsumerState<PassCertifyPage> {
  final GlobalKey webViewKey = GlobalKey();

  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..addJavaScriptChannel('goonghapmessage', onMessageReceived: (message) {
      final model = const JsonDecoder().convert(message.message);
      Log.d(":::: goonghapmessage가자... $model");
    })
    ..addJavaScriptChannel('PHONE', onMessageReceived: (message) {
      final model = const JsonDecoder().convert(message.message);
      Log.d("::::PHONE 가자... $model");
    })
    ..loadRequest(Uri.parse('http://13.125.57.183:8080/danal/ready'));

  @override
  void initState() {
    super.initState();
  }

  Future<void> showError(String title, String message) =>
      showErrorDialog(context: context, title: title, message: message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 4.0,
          backgroundColor: AppColors.boxDark,
          leading: IconButton(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            icon: const Icon(CupertinoIcons.chevron_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("PASS",
              style: AppTextStyle.textStyleBold
                  .copyWith(fontSize: 20, color: Colors.white)),
          centerTitle: true,
          elevation: 0.0,
          shape: const Border(
              bottom: BorderSide(color: Color(0xFF485057), width: 1)),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(child: WebViewWidget(controller: controller)),
            ],
          ),
        ));
  }
}
