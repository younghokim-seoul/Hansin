import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
          title: Text("PASS", style: AppTextStyle.textStyleBold.copyWith(fontSize: 20, color: Colors.white)),
          centerTitle: true,
          elevation: 0.0,
          shape: const Border(bottom: BorderSide(color: Color(0xFF485057), width: 1)),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(
                child: InAppWebView(
                  key: webViewKey,
                  initialUrlRequest: URLRequest(
                    url: Uri.parse("http://13.125.57.183:8080/danal/ready"),
                  ),
                  initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(
                        javaScriptCanOpenWindowsAutomatically: true,
                        javaScriptEnabled: true,
                        useOnDownloadStart: true,
                        useOnLoadResource: true,
                        useShouldOverrideUrlLoading: true,
                        mediaPlaybackRequiresUserGesture: true,
                        allowFileAccessFromFileURLs: true,
                        allowUniversalAccessFromFileURLs: true,
                        verticalScrollBarEnabled: true,
                        userAgent:
                            'Mozilla/5.0 (Linux; Android 9; LG-H870 Build/PKQ1.190522.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/83.0.4103.106 Mobile Safari/537.36'),
                    android: AndroidInAppWebViewOptions(
                        useHybridComposition: true,
                        allowContentAccess: true,
                        builtInZoomControls: true,
                        thirdPartyCookiesEnabled: true,
                        allowFileAccess: true,
                        supportMultipleWindows: true),
                    ios: IOSInAppWebViewOptions(
                      allowsInlineMediaPlayback: true,
                      allowsBackForwardNavigationGestures: true,
                    ),
                  ),
                  onWebViewCreated: (controller) {
                    Log.d("::::::controller... " + controller.toString());
                    /* 웹에서 앱과 통신할 수 있는 핸들러를 정의
                      * handlerName : 핸들러명
                      * callback : 웹에서 보낸 데이터
                      * return : 웹으로 보낼 데이터
                      */

                    controller.addJavaScriptHandler(handlerName: 'TAP', callback: (args) {
                      Log.d(":::args .. $args");
                    });
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
