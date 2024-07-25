import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_timer/app/data/models/time_input_model.dart';
import 'package:my_timer/app/modules/home/data/option_items_data.dart';
import 'package:my_timer/app/routes/app_pages.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  static HomeController get to => Get.find<HomeController>();

  final totalOptions = OptionItemsData.options.length;
  final currentIndex = RxInt(-1);

  List<Animation> animations = [];
  List<AnimationController> animationsController = [];

  @override
  void onInit() {
    for (int i = 0; i < totalOptions; i++) {
      animationsController.add(AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 250),
      ));

      animations.add(Tween(begin: 1.0, end: 1.2).animate(
        CurvedAnimation(
          parent: animationsController[i],
          curve: Curves.bounceInOut,
        ),
      ));
    }
    super.onInit();
  }

  @override
  void dispose() {
    for (int i = 0; i < totalOptions; i++) {
      animationsController[i].dispose();
    }
    super.dispose();
  }

  void onHandleTap(int index, bool isSelected) {
    if (isSelected) {
      animationsController[index].reverse();
      currentIndex.value = -1;
    } else {
      if (currentIndex.value != -1) {
        animationsController[currentIndex.value].reverse();
      }
      animationsController[index].forward();
      currentIndex.value = index;
    }
  }

  void onStartTimer(TimeInputModel model) {
    Get.toNamed(Routes.TIMER,
        parameters: {"data": json.encode(model.toJson())});
  }
}
