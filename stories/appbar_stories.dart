import 'package:flutter/material.dart';

import 'widgets/simple_scaffold.dart';

Widget appbar() => AppBarStories();

class AppBarStories extends StatelessWidget {
  AppBarStories();

  @override
  Widget build(BuildContext context) {
    return SimpleScaffold(
        appBar: AppBar(
          title: Text('Titulo'),
        ),
        child: SizedBox());
  }
}
