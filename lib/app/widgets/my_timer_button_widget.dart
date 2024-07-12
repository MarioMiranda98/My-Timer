import 'package:flutter/material.dart';
import 'package:my_timer/app/data/enums/button_type_enum.dart';
import 'package:my_timer/app/resources/color_manager.dart';
import 'package:my_timer/app/resources/font_manager.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';
import 'package:my_timer/app/resources/text_style_manager.dart';

class MyTimerButtonWidget extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final ButtonType type;
  final bool disabled;
  final void Function() onPressed;

  MyTimerButtonWidget({
    this.text,
    this.icon,
    this.disabled = false,
    this.type = ButtonType.primary,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RawMaterialButton(
      onPressed: disabled ? null : onPressed,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: _getBackgroundColor(theme),
          borderRadius: BorderRadius.circular(SizesManager.s8),
        ),
        constraints: BoxConstraints(
          minHeight: SizesManager.s56,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (text != null)
                Text(
                  text ?? '',
                  style: TextStyleManager.getSemiBoldStyle(
                    color: _getTextColor(theme),
                    fontSize: FontsManager.s20,
                  ),
                ),
              if (icon != null) ...{
                SizedBox(
                    width: text != null ? SizesManager.s12 : SizesManager.s0),
                Icon(icon, size: SizesManager.s48, color: _getTextColor(theme)),
              }
            ],
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor(ThemeData theme) {
    switch (type) {
      case ButtonType.primary:
        return theme.colorScheme.primary;
      case ButtonType.secondary:
        return theme.colorScheme.secondary;
      case ButtonType.ghost:
        return theme.primaryColorLight;
      case ButtonType.disabled:
        return ColorManager.gray;
      default:
        return theme.colorScheme.primary;
    }
  }

  Color _getTextColor(ThemeData theme) {
    switch (type) {
      case ButtonType.primary:
        return theme.colorScheme.surface;
      case ButtonType.secondary:
        return theme.colorScheme.primary;
      case ButtonType.ghost:
        return theme.colorScheme.surface;
      case ButtonType.disabled:
        return ColorManager.darkGray;
      default:
        return theme.colorScheme.surface;
    }
  }
}
