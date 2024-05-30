import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hansin/domain/entity/certify_entity.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/dev_log.dart';

enum CertifyType { PASS, RESET }

@RoutePage()
class PassCertifyPage extends ConsumerStatefulWidget {
  static const routeName = '/pass_certify';

  const PassCertifyPage({super.key,required this.certifyType});

  final CertifyType certifyType;

  @override
  ConsumerState createState() => _PassCertifyPageState();
}

class _PassCertifyPageState extends ConsumerState<PassCertifyPage> {
  final GlobalKey webViewKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

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
        title: Text("PASS", style: AppTextStyle.textStyleBold.copyWith(fontSize: 20, color: Colors.white)),
        centerTitle: true,
        elevation: 0.0,
        shape: const Border(bottom: BorderSide(color: Color(0xFF485057), width: 1)),
      ),
      // body: WebViewWidget(controller: controller),
      body: InAppWebView(
        key: webViewKey,
        initialUrlRequest: URLRequest(url: Uri.parse("http://13.125.57.183:8080/danal/requestAuth")),
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
              mixedContentMode: AndroidMixedContentMode.MIXED_CONTENT_ALWAYS_ALLOW,
              initialScale: 100),
          ios: IOSInAppWebViewOptions(
            allowsInlineMediaPlayback: true,
            allowsBackForwardNavigationGestures: true,
          ),
        ),
        onLoadStop: (InAppWebViewController controller, uri) {},
        onWebViewCreated: (controller) {
          controller.addJavaScriptHandler(
              handlerName: 'FlutterHandler',
              callback: (args) {
                final model = const JsonDecoder().convert(args[0]);
                Log.d("::::hs_main_auth 가자... $model");

                var code = model['code'] as int;
                var response = model['response'];
                Log.d(":::code $code");
                var entity = CertifyEntity(code: code, name: response['name'], gender: response['gender'], phone: response['phone'] ,type: widget.certifyType);
                Log.d(":::entity $entity");
                context.router.pop(entity);
              });
        },
      ),
    );
  }
}
