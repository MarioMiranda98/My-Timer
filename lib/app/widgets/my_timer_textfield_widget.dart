import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:my_timer/app/resources/font_manager.dart';
import 'package:my_timer/app/resources/padding_manager.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';
import 'package:my_timer/app/resources/text_style_manager.dart';

class MyTimerTextFieldWidget extends StatelessWidget {
  final GlobalKey? textFieldKey;
  final String name;
  final String? label;
  final Widget? errorWidget;
  final Widget? suffixWidget;
  final Widget? prefixWidget;
  final int? maxLength;
  final bool obscureText;
  final TextEditingController? textController;
  final FocusNode? focusNode;
  final bool showCounter;
  final List<String? Function(String?)> formValidators;
  final TextInputType keyboardType;
  final bool enabled;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSubmitted;

  MyTimerTextFieldWidget({
    this.textFieldKey,
    this.label,
    this.focusNode,
    this.maxLength,
    this.errorWidget,
    this.suffixWidget,
    this.prefixWidget,
    this.textController,
    this.inputFormatters,
    this.onChanged,
    this.onSubmitted,
    this.enabled = true,
    this.obscureText = false,
    this.showCounter = false,
    this.formValidators = const [],
    this.keyboardType = TextInputType.text,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final theme = Theme.of(context);
    return SizedBox(
      width: mq.size.width,
      child: FormBuilderTextField(
        key: textFieldKey,
        name: name,
        enabled: enabled,
        obscureText: obscureText,
        controller: textController,
        focusNode: focusNode,
        maxLength: maxLength,
        inputFormatters: inputFormatters,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        buildCounter: showCounter ? _buildTextFieldCounter : null,
        style: TextStyleManager.getRegularStyle(
          color: theme.primaryColor,
          fontSize: FontsManager.s18,
        ),
        decoration: InputDecoration(
          label: Text(label ?? ''),
          labelStyle: TextStyleManager.getSemiBoldStyle(
            color: theme.primaryColor,
            fontSize: FontsManager.s20,
          ),
          contentPadding: EdgeInsets.all(
            PaddingManager.p12,
          ),
          suffix: suffixWidget,
          prefix: prefixWidget,
          error: errorWidget,
          errorStyle: TextStyleManager.getRegularStyle(
              color: theme.colorScheme.error, fontSize: FontsManager.s14),
        ).applyDefaults(theme.inputDecorationTheme),
        keyboardType: keyboardType,
        validator: FormBuilderValidators.compose(formValidators),
      ),
    );
  }

  Widget _buildTextFieldCounter(BuildContext context,
      {required int currentLength,
      required bool isFocused,
      required int? maxLength}) {
    final theme = Theme.of(context);

    return Container(
      child: Text(
        maxLength == null ? '$currentLength' : '$currentLength / $maxLength',
        style: TextStyleManager.getLightStyle(
            color: theme.primaryColor, fontSize: SizesManager.s14),
      ),
    );
  }
}
