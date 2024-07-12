import 'package:flutter/material.dart';
import 'package:my_timer/app/resources/font_manager.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';
import 'package:my_timer/app/resources/text_style_manager.dart';

class OptionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final int index;
  final bool isSelected;
  final Animation animation;
  final AnimationController animationController;
  final void Function(int, bool) onHandleTap;

  OptionItem({
    required this.icon,
    required this.title,
    required this.isSelected,
    required this.animation,
    required this.animationController,
    required this.onHandleTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget? child) => GestureDetector(
        onTap: () => onHandleTap(index, isSelected),
        child: Transform.scale(
          scale: animation.value,
          child: Container(
            width: SizesManager.s110,
            height: SizesManager.s110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(SizesManager.s12),
              color: theme.colorScheme.secondary,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: SizesManager.s36,
                  color: theme.colorScheme.primary,
                ),
                SizedBox(height: SizesManager.s8),
                Text(
                  title,
                  style: TextStyleManager.getRegularStyle(
                    color: theme.colorScheme.primary,
                    fontSize: FontsManager.s20,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
