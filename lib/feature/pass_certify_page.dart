import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hansin/utils/dev_log.dart';

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: InAppWebView(
          key: webViewKey,
          initialUrlRequest: URLRequest(url: Uri.parse("http://192.168.101.2/")),
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
                mixedContentMode: AndroidMixedContentMode.MIXED_CONTENT_ALWAYS_ALLOW,
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
          },
        ),
      );
  }
}
