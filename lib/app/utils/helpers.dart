import 'package:flutter/material.dart';

class Helpers {
  static double getRealScreenHeight(BuildContext context) {
    final mq = MediaQuery.of(context);
    final appBarSize = AppBar().preferredSize.height;
    final mqPaddingOf = MediaQuery.paddingOf(context).top;

    return mq.size.height - appBarSize - mqPaddingOf - mq.padding.top;
  }
}
