import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_timer/app/resources/font_manager.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';
import 'package:my_timer/app/resources/text_style_manager.dart';
import 'package:my_timer/generated/locales.g.dart';

class MyTimerAppbarWidget extends AppBar {
  MyTimerAppbarWidget(
      {super.leading,
      List<Widget> super.actions = const [],
      required ThemeData theme})
      : super(
          title: Container(
            margin: EdgeInsets.symmetric(vertical: SizesManager.s8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock_clock,
                  size: SizesManager.s32,
                  color: theme.colorScheme.surface,
                ),
                SizedBox(width: SizesManager.s12),
                Text(
                  LocaleKeys.title.tr,
                  style: TextStyleManager.getBoldStyle(
                      color: theme.colorScheme.surface,
                      fontSize: FontsManager.s24),
                ),
              ],
            ),
          ),
        );
}
