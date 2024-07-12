import 'package:flutter/material.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';
import 'package:my_timer/app/widgets/my_timer_time_chart/widgets/simple_chart.dart';
import 'package:my_timer/app/widgets/my_timer_time_chart/widgets/simple_timer.dart';

class MyTimerTimeChartWidget extends StatefulWidget {
  final int? seconds;

  MyTimerTimeChartWidget({
    this.seconds = 0,
  });

  @override
  State<MyTimerTimeChartWidget> createState() => _MyTimerTimeChartWidgetState();
}

class _MyTimerTimeChartWidgetState extends State<MyTimerTimeChartWidget> {
  int _secs = 0;

  @override
  void initState() {
    _secs = widget.seconds ?? 0;
    _start();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Container(
      width: mq.size.width * 0.9,
      margin: EdgeInsets.symmetric(horizontal: mq.size.width * 0.05),
      child: Column(
        children: [
          SimpleTimer(seconds: _secs),
          SizedBox(height: SizesManager.s12),
          SimpleChart(seconds: _secs, initialSeconds: widget.seconds ?? 0),
        ],
      ),
    );
  }

  void _start() async {
    if (_secs == 0) return;
    for (int i = _secs; i > 0; i--) {
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        _secs = _secs - 1;
      });
    }
  }
}
