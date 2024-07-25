import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';
import 'package:my_timer/app/resources/text_style_manager.dart';
import 'package:my_timer/app/widgets/my_timer_appbar_widget.dart';
import 'package:my_timer/app/widgets/my_timer_scaffold.dart';
import 'package:my_timer/app/widgets/my_timer_time_chart/my_timer_time_chart_widget.dart';
import 'package:my_timer/generated/locales.g.dart';

import '../controllers/timer_controller.dart';

class TimerView extends GetView<TimerController> {
  const TimerView({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MyTimerScaffold(
      appBar: MyTimerAppbarWidget(
        theme: theme,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: SizesManager.s24),
          Text(
            LocaleKeys.timer_title_classic_mode.tr,
            style: TextStyleManager.getBoldStyle(
              color: theme.colorScheme.primary,
              fontSize: SizesManager.s36,
            ),
          ),
          Spacer(flex: 1),
          MyTimerTimeChartWidget(
            seconds: controller.timeModel.time,
          ),
          Spacer(flex: 2),
          SizedBox(height: SizesManager.s24),
        ],
      ),
    );
  }
}
