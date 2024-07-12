import 'package:flutter/material.dart';
import 'package:my_timer/app/resources/font_manager.dart';
import 'package:my_timer/app/resources/text_style_manager.dart';
import 'package:my_timer/app/widgets/my_timer_time_chart/utils/simple_timer_format.dart';

class SimpleTimer extends StatelessWidget {
  final int seconds;

  SimpleTimer({
    required this.seconds,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      child: Center(
        child: Text(
          SimpleTimerFormat.formatSecondsToTimer(seconds),
          style: TextStyleManager.getMediumStyle(
            color: theme.colorScheme.primary,
            fontSize: FontsManager.s64,
          ),
        ),
      ),
    );
  }
}
