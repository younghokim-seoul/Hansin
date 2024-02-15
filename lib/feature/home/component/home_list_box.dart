import 'package:flutter/material.dart';
import 'package:hansin/theme.dart';
import 'package:yaru_widgets/widgets.dart';

class HomeListBox extends StatelessWidget {
  final String title;
  final Color bgColor;
  final VoidCallback? onTap;

  const HomeListBox({super.key, required this.title, required this.bgColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return YaruBanner(
        padding: EdgeInsets.zero,
        color: bgColor,
        onTap: onTap,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyle.textStyleBold
                .copyWith(fontSize: 28, color: Colors.white),
          ),
        ));
  }
}
