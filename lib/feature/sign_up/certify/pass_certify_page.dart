import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hansin/domain/entity/certify_entity.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/dev_log.dart';

import 'package:hansin/widget/dialog/dialogs.dart';

@RoutePage()
class PassCertifyPage extends ConsumerStatefulWidget {
  static const routeName = '/pass_certify';

  const PassCertifyPage({super.key});

  @override
  ConsumerState createState() => _PassCertifyPageState();
}

class _PassCertifyPageState extends ConsumerState<PassCertifyPage> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? _webViewController;

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
          title: Text("Web Viewer",
              style: AppTextStyle.textStyleBold
                  .copyWith(fontSize: 20, color: Colors.white)),
          centerTitle: true,
          elevation: 0.0,
          shape: const Border(
            bottom: BorderSide(color: Color(0xFF485057), width: 1),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                _webViewController?.reload();
              },
            )
          ],
        ),
        body: InAppWebView(
          key: webViewKey,
          initialUrlRequest:
              URLRequest(url: Uri.parse("http://192.168.101.2/")),
          initialOptions: InAppWebViewGroupOptions(
            crossPlatform: InAppWebViewOptions(
              cacheEnabled: true,
              clearCache: true,
              transparentBackground: true,
              useShouldOverrideUrlLoading: true,
              javaScriptEnabled: true,
            ),
            android: AndroidInAppWebViewOptions(
                useHybridComposition: true,
                allowContentAccess: true,
                thirdPartyCookiesEnabled: true,
                mixedContentMode:
                    AndroidMixedContentMode.MIXED_CONTENT_ALWAYS_ALLOW,
                initialScale: 100),
            ios: IOSInAppWebViewOptions(
              allowsInlineMediaPlayback: true,
              allowsBackForwardNavigationGestures: true,
            ),
          ),
          onLoadStart: (controller, url) {
            Log.d(":::onLoadStart $url");
          },
          onLoadStop: (InAppWebViewController controller, uri) {
            Log.d(":::onLoadStop $uri");
          },
          onLoadError: (controller, url, code, message) {
            Log.d(":::onLoadError $url $code $message");
          },
          onPrint: (controller, url) {
            Log.d(":::onPrint $url");
          },
          shouldOverrideUrlLoading: (controller, navigationAction) async {
            var uri = navigationAction.request.url;
            Log.d(":::shouldOverrideUrlLoading $uri");
            return NavigationActionPolicy.ALLOW;
          },
          onWebViewCreated: (controller) {
            _webViewController = controller;
            Log.d(":::onWebViewCreated $controller");
            controller.addJavaScriptHandler(
                handlerName: 'FlutterHandler',
                callback: (args) {
                  final model = const JsonDecoder().convert(args[0]);
                  Log.d("::::hs_main_auth 가자... $model");

                  var code = model['code'] as int;
                  var response = model['response'];
                  Log.d(":::code $code");
                  var entity = CertifyEntity(
                      code: code,
                      name: response['name'],
                      gender: response['gender'],
                      phone: response['phone']);
                  Log.d(":::entity $entity");
                  context.router.pop(entity);
                });
          },
        ));
  }
}
