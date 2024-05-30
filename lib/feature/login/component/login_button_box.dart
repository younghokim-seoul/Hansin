import 'package:flutter/material.dart';
import 'package:hansin/theme.dart';
import 'package:hansin/utils/extension/margin_extension.dart';
import 'package:hansin/utils/screen_util.dart';

class LoginButtonBox extends StatelessWidget {
  final String title;
  final Color bgColor;
  final VoidCallback? onTap;
  final bool isUnderline;

  const LoginButtonBox({
    super.key,
    required this.title,
    required this.bgColor,
    this.isUnderline = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        width: getScreenWidth(context),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: bgColor,
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyle.textStyleBold.copyWith(
                fontSize: 28,
                color: Colors.white,
                decoration: isUnderline
                    ? TextDecoration.underline
                    : TextDecoration.none,
                decorationColor: Colors.white),
          ).paddingOnly(top: 10, bottom: 10),
        ),
      ),
    );
  }
}
