import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_timer/app/modules/home/models/option_item_model.dart';
import 'package:my_timer/generated/locales.g.dart';

class OptionItemsData {
  static List<OptionItemModel> options = [
    OptionItemModel(
      icon: Icons.class_sharp,
      title: LocaleKeys.home_options_classic.tr,
      index: 0,
    ),
    OptionItemModel(
      icon: Icons.timelapse,
      title: LocaleKeys.home_options_interval.tr,
      index: 1,
    ),
    OptionItemModel(
      icon: Icons.dashboard_customize,
      title: LocaleKeys.home_options_custom.tr,
      index: 2,
    ),
  ];
}
