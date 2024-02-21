import 'package:flutter/material.dart';
import 'package:hansin/theme.dart';

class ChoiceAmPmBox extends StatelessWidget {
  const ChoiceAmPmBox({
    super.key,
    required this.title,
    required this.focus, required this.onTap,
  });

  final String title;
  final bool focus;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.only(
            left: 10, right: 10, top: 10, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(width: 1, color: AppColors.boxDark),
          color: focus ? AppColors.boxDark : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              blurRadius: 5.0,
              offset: const Offset(0, 8),
            )
          ],
        ),
        child: Text(
          title,
          style: AppTextStyle.textStyleBold.copyWith(
            fontSize: 28,
            color: !focus ? AppColors.boxDark : Colors.white,
          ),
        ),
      ),
    );
  }
}
