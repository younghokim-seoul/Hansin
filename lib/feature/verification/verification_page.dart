import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hansin/assets/assets.gen.dart';

@RoutePage()
class VerificationPage extends StatelessWidget {
  static const routeName = '/verification';

  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Gap(20),
          Assets.images.titleLog.image(),
          const Gap(10),
        ]),
      ),
    );
  }
}
