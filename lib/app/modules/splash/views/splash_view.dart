import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_timer/app/resources/font_manager.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';
import 'package:my_timer/app/resources/text_style_manager.dart';
import 'package:my_timer/app/widgets/my_timer_scaffold.dart';
import 'package:my_timer/generated/locales.g.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MyTimerScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_clock,
              size: SizesManager.s120,
              color: theme.colorScheme.primary,
            ),
            SizedBox(height: SizesManager.s24),
            Text(
              LocaleKeys.title.tr,
              style: TextStyleManager.getBoldStyle(
                  color: theme.colorScheme.primary, fontSize: FontsManager.s64),
            ),
          ],
        ),
      ),
    );
  }
}
