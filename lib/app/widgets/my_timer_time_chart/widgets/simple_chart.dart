import 'package:flutter/material.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';
import 'package:my_timer/app/widgets/my_timer_time_chart/widgets/linear_chart.dart';

class SimpleChart extends StatelessWidget {
  final int seconds;
  final int initialSeconds;

  const SimpleChart({
    this.seconds = 0,
    this.initialSeconds = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: SizesManager.s24,
        child: CustomPaint(
          painter: LinearChart(
            seconds: seconds,
            initialSeconds: initialSeconds,
          ),
        ));
  }
}
