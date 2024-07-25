import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';
import 'package:my_timer/app/resources/text_style_manager.dart';
import 'package:my_timer/generated/locales.g.dart';

class CustomMode extends StatelessWidget {
  CustomMode();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          LocaleKeys.home_option_selected_custom_mode.tr,
          style: TextStyleManager.getMediumStyle(
            color: Colors.black,
            fontSize: SizesManager.s18,
          ),
        ),
      ),
    );
  }
}
