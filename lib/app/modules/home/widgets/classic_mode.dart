import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:my_timer/app/data/enums/modes_enum.dart';
import 'package:my_timer/app/data/models/time_input_model.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';
import 'package:my_timer/app/resources/text_style_manager.dart';
import 'package:my_timer/app/utils/helpers.dart';
import 'package:my_timer/app/widgets/my_timer_button_widget.dart';
import 'package:my_timer/app/widgets/my_timer_textfield_widget.dart';
import 'package:my_timer/generated/locales.g.dart';

class ClassicMode extends StatefulWidget {
  final void Function(TimeInputModel) onStartTimer;

  ClassicMode({
    required this.onStartTimer,
  });

  @override
  State<ClassicMode> createState() => _ClassicModeState();
}

class _ClassicModeState extends State<ClassicMode> {
  String _totalTime = "";
  final TextEditingController timeController = TextEditingController();
  final FocusNode timeFocusNode = FocusNode();
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.only(top: SizesManager.s12),
      padding: EdgeInsets.all(SizesManager.s18),
      child: Column(
        children: [
          Text(
            LocaleKeys.home_option_selected_classic_mode.tr,
            style: TextStyleManager.getBoldStyle(
              color: theme.colorScheme.primary,
              fontSize: SizesManager.s48,
            ),
          ),
          SizedBox(height: SizesManager.s24),
          _TimeInput(
            formKey: _formKey,
            timeController: timeController,
            timeFocusNode: timeFocusNode,
            onChanged: _formatTime,
          ),
          SizedBox(height: SizesManager.s24),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "${LocaleKeys.home_classic_mode_time_label.tr}:",
                style: TextStyleManager.getSemiBoldStyle(
                  color: theme.colorScheme.primary,
                  fontSize: SizesManager.s20,
                ),
              ),
              SizedBox(
                width: SizesManager.s12,
              ),
              Text(
                _totalTime,
                style: TextStyleManager.getRegularStyle(
                  color: theme.colorScheme.primary,
                  fontSize: SizesManager.s20,
                ),
              ),
            ],
          ),
          Spacer(),
          MyTimerButtonWidget(
            onPressed: _onPressed,
            text: LocaleKeys.texts_button_start.tr,
          ),
        ],
      ),
    );
  }

  void _formatTime(String? value) {
    if (value?.isEmpty ?? true) {
      setState(() {
        _totalTime = LocaleKeys.home_classic_mode_no_time.tr;
      });
      return;
    }

    int parsedTime = int.parse(value ?? '0');
    String formattedTime = Helpers.formatSecondsToTimer(parsedTime);

    setState(() {
      _totalTime = formattedTime;
    });
  }

  int _parseTimeStringToInt() => int.parse(timeController.text);

  void _onPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      widget.onStartTimer(TimeInputModel(
        time: _parseTimeStringToInt(),
        mode: ModesEnum.classic,
      ));
    }
  }
}

class _TimeInput extends StatelessWidget {
  final TextEditingController timeController;
  final FocusNode timeFocusNode;
  final void Function(String?) onChanged;
  final GlobalKey formKey;

  _TimeInput({
    required this.formKey,
    required this.timeController,
    required this.timeFocusNode,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: MyTimerButtonWidget(
            onPressed: _onSubTime,
            icon: Icons.horizontal_rule_sharp,
          ),
        ),
        SizedBox(width: SizesManager.s16),
        Expanded(
          flex: 4,
          child: FormBuilder(
            key: formKey,
            child: MyTimerTextFieldWidget(
              name: 'time',
              label: LocaleKeys.home_classic_mode_input_time_label.tr,
              textController: timeController,
              focusNode: timeFocusNode,
              onChanged: onChanged,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              formValidators: [
                FormBuilderValidators.required(),
                FormBuilderValidators.compose([Helpers.greaterThanZero])
              ],
            ),
          ),
        ),
        SizedBox(width: SizesManager.s16),
        Expanded(
          child: MyTimerButtonWidget(
            onPressed: _onAddTime,
            icon: Icons.add,
          ),
        ),
      ],
    );
  }

  void _onAddTime() {
    String result = "";
    final String time = timeController.text;

    time.isEmpty ? result = "1" : result = "${int.parse(time) + 1}";

    timeController.text = result;
  }

  void _onSubTime() {
    String result = "";
    final String time = timeController.text;

    time.isEmpty
        ? result = "0"
        : (int.parse(time) - 1 <= 0)
            ? result = "0"
            : result = "${int.parse(time) - 1}";

    timeController.text = result;
  }
}
