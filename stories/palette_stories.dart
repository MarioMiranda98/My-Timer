import 'package:flutter/material.dart';
import 'package:my_timer/app/resources/color_manager.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';

import 'widgets/simple_scaffold.dart';

Widget palette() => _PaletteStories();

class _PaletteStories extends StatelessWidget {
  _PaletteStories();

  @override
  Widget build(BuildContext context) {
    return SimpleScaffold(
        child: SingleChildScrollView(
      child: Column(children: [
        Row(
          children: [
            _ColorTile(color: ColorManager.primary, type: 'Primary'),
            _ColorTile(
                color: ColorManager.primaryOpacity70, type: 'Primary Dark'),
            _ColorTile(
                color: ColorManager.primaryLight, type: 'Primary Dark Light'),
          ],
        ),
        SizedBox(height: SizesManager.s20),
        Row(
          children: [
            _ColorTile(
                color: ColorManager.backgroundColor,
                type: 'Scaffold\nBackground'),
            _ColorTile(color: ColorManager.darkGray, type: 'Disabled'),
            _ColorTile(color: ColorManager.primaryOpacity70, type: 'Splash'),
          ],
        ),
        SizedBox(height: SizesManager.s20),
        Row(
          children: [
            _ColorTile(color: ColorManager.primary, type: 'CS Primary'),
            _ColorTile(
                color: ColorManager.primaryOpacity70, type: 'On Primary'),
            _ColorTile(color: ColorManager.secondary, type: 'Secondary'),
          ],
        ),
        SizedBox(height: SizesManager.s20),
        Row(
          children: [
            _ColorTile(
                color: ColorManager.secondaryOpacity70, type: 'On Secondary'),
            _ColorTile(color: ColorManager.error, type: 'Error'),
            _ColorTile(color: ColorManager.onError, type: 'onError'),
          ],
        ),
        SizedBox(height: SizesManager.s20),
        Row(
          children: [
            _ColorTile(color: ColorManager.backgroundColor, type: 'Surface'),
            _ColorTile(color: ColorManager.white, type: 'On Surface'),
            _ColorTile(color: ColorManager.backgroundColor, type: 'Background'),
          ],
        ),
        SizedBox(height: SizesManager.s20),
        _ColorTile(type: 'On Background', color: ColorManager.white)
      ]),
    ));
  }
}

class _ColorTile extends StatelessWidget {
  final Color color;
  final String type;
  final double chunkSize = SizesManager.s100;

  _ColorTile({
    required this.type,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: SizesManager.s8),
      child: Column(
        children: [
          Container(
            height: chunkSize,
            width: chunkSize,
            color: color,
          ),
          Text(type)
        ],
      ),
    );
  }
}
