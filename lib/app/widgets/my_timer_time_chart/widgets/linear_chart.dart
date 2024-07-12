import 'package:flutter/material.dart';
import 'package:my_timer/app/resources/color_manager.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';

class LinearChart extends CustomPainter {
  final int seconds;
  final int initialSeconds;

  LinearChart({
    required this.seconds,
    required this.initialSeconds,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final painter = Paint();
    painter.strokeWidth = SizesManager.s12;
    painter.color = ColorManager.primary;
    painter.style = PaintingStyle.stroke;

    canvas.drawLine(
        Offset.zero, Offset(_calcLineLength(size.width), 0), painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  double _calcLineLength(double parentWidth) {
    final op = seconds * parentWidth;

    return op / initialSeconds;
  }
}
