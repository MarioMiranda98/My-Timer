import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:get/get.dart';
import 'package:my_timer/app/modules/home/data/option_items_data.dart';
import 'package:my_timer/app/modules/home/widgets/option_item.dart';
import 'package:my_timer/app/modules/home/widgets/options_carousel.dart';
import 'package:my_timer/app/modules/home/widgets/selected_option.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';
import 'package:my_timer/app/utils/helpers.dart';
import 'package:my_timer/app/widgets/my_timer_appbar_widget.dart';
import 'package:my_timer/app/widgets/my_timer_scaffold.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MyTimerScaffold(
      appBar: MyTimerAppbarWidget(theme: theme),
      body: SingleChildScrollView(
        child: SizedBox(
          height: Helpers.getRealScreenHeight(context),
          child: Column(
            children: [
              SizedBox(height: SizesManager.s12),
              Obx(
                () => OptionsCarousel(
                  options: OptionItemsData.options
                      .map(
                        (option) => OptionItem(
                          icon: option.icon,
                          title: option.title,
                          isSelected:
                              controller.currentIndex.value == option.index,
                          animation: controller.animations[option.index],
                          animationController:
                              controller.animationsController[option.index],
                          onHandleTap: controller.onHandleTap,
                          index: option.index,
                        ),
                      )
                      .toList(),
                ),
              ),
              Expanded(
                child: SelectedOption(
                  currentIndex: controller.currentIndex,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
