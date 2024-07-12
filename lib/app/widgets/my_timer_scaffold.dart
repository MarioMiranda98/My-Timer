import 'package:flutter/material.dart';

class MyTimerScaffold extends StatelessWidget {
  final AppBar? appBar;
  final Widget? body;

  MyTimerScaffold({
    this.appBar,
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        body: Container(
          padding: const EdgeInsets.all(8.0),
          child: body,
        ),
        backgroundColor: theme.colorScheme.surface,
      ),
    );
  }
}
