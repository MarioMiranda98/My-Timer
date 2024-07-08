import 'package:flutter/material.dart';

class SimpleScaffold extends StatelessWidget {
  final AppBar? appBar;
  final Widget child;

  const SimpleScaffold({this.appBar, required this.child});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: mq.size.width,
            height: mq.size.height,
            child: child,
          ),
        ),
      ),
    );
  }
}
