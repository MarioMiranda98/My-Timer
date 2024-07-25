import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_timer/app/modules/home/data/modes_data.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';
import 'package:my_timer/app/resources/text_style_manager.dart';
import 'package:my_timer/generated/locales.g.dart';

class SelectedOption extends StatelessWidget {
  final RxInt currentIndex;

  SelectedOption({
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      child: Obx(
        () => currentIndex.value == -1
            ? Center(
                child: Text(
                  LocaleKeys.home_option_selected_no_selection.tr,
                  style: TextStyleManager.getSemiBoldStyle(
                    color: theme.colorScheme.primary,
                    fontSize: SizesManager.s32,
                  ),
                ),
              )
            : ModesData.views[currentIndex.value],
      ),
    );
  }
}
