import 'package:flutter/material.dart';
import 'package:hansin/theme.dart';

class HomeListBox extends StatelessWidget {
  final String title;
  final Color bgColor;
  final VoidCallback? onTap;

  const HomeListBox({super.key, required this.title, required this.bgColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(22),
        child: Container(
          margin:const EdgeInsets.only(left: 16,right: 16,bottom: 10,top: 10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(22)),
            color: bgColor,
          ),
          padding: const EdgeInsets.all(0),
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyle.textStyleBold
                  .copyWith(fontSize: 28, color: Colors.white),
            ),
          ),
        )
    );
  }
}
