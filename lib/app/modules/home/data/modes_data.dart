import 'package:flutter/material.dart';
import 'package:my_timer/app/modules/home/controllers/home_controller.dart';
import 'package:my_timer/app/modules/home/widgets/classic_mode.dart';
import 'package:my_timer/app/modules/home/widgets/custom_mode.dart';
import 'package:my_timer/app/modules/home/widgets/interval_mode.dart';

class ModesData {
  static List<Widget> views = [
    ClassicMode(
      onStartTimer: HomeController.to.onStartTimer,
    ),
    IntervalMode(),
    CustomMode(),
  ];
}
