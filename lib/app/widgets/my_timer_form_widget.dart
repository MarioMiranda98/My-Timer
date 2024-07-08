import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';
import 'package:my_timer/app/widgets/my_timer_textfield_widget.dart';

class MyTimerFormWidget extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;
  final List<MyTimerTextFieldWidget> fields;

  MyTimerFormWidget({
    this.fields = const [],
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: formKey,
      child: ListView.builder(
        itemCount: fields.length,
        itemBuilder: _buildFieldItem,
      ),
    );
  }

  Widget _buildFieldItem(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: SizesManager.s6, horizontal: SizesManager.s12),
      child: fields[index],
    );
  }
}
