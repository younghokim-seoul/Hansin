import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hansin/theme.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:yaru/icons.dart';


const kMaxWidth = 500.0;

Future<void> showErrorDialog({
  required BuildContext context,
  required String title,
  required String message,
  IconData? icon,
}) {
  return showDialog(
    context: context,
    builder: (context) => ErrorDialog(
      title: title,
      message: message,
      icon: icon,
    ),
  );
}

Future<void> showWarningDialog({
  required BuildContext context,
  required String title,
  required String message,
  required VoidCallback onTap,
  IconData? icon,
}) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => WarningDialog(
      title: title,
      message: message,
      onTap: onTap,
      icon: icon,
    ),
  );
}

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    required this.title,
    required this.message,
    super.key,
    this.icon,
  });

  final String title;
  final String message;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        PushButton.filled(
          onPressed: () {
            context.router.pop();
          },
          style: FilledButton.styleFrom(backgroundColor: AppColors.boxDark),
          child: const Text('취소'),
        ),
      ],
      content: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        child: Row(
          children: [
            Icon(
              icon ?? YaruIcons.error,
              color: Theme.of(context).colorScheme.error,
              size: 64.0,
            ),
            const SizedBox(width: 16),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Theme.of(context).textTheme.titleMedium!.fontSize! * 1.5,
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(message),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WarningDialog extends StatelessWidget {
  const WarningDialog({
    required this.title,
    required this.message,
    required this.onTap,
    super.key,
    this.icon,
  });

  final String title;
  final String message;
  final IconData? icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        PushButton.filled(
          onPressed: () {
            context.router.pop();
            onTap();
          },
          style: FilledButton.styleFrom(backgroundColor: AppColors.boxDark),
          child: const Text('확인'),
        ),
        PushButton.filled(
          onPressed: () {
            context.router.pop();
          },
          style: FilledButton.styleFrom(backgroundColor: AppColors.boxDark),
          child: const Text('취소'),
        ),
      ],
      content: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        child: Row(
          children: [
            Icon(
              icon ?? YaruIcons.warning,
              color: Theme.of(context).colorScheme.error,
              size: 64.0,
            ),
            const SizedBox(width: 16),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Theme.of(context).textTheme.titleMedium!.fontSize! * 1.5,
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(message),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
