import 'package:flutter/material.dart';
import 'package:my_timer/app/modules/home/widgets/option_item.dart';

class OptionsCarousel extends StatelessWidget {
  final List<OptionItem> options;

  OptionsCarousel({
    this.options = const [],
  });

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Container(
      width: mq.size.width * 0.9,
      margin: EdgeInsets.symmetric(horizontal: mq.size.width * 0.05),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: options,
      ),
    );
  }
}
