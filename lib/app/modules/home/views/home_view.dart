import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:get/get.dart';
import 'package:my_timer/app/resources/color_manager.dart';
import 'package:my_timer/app/resources/font_manager.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';
import 'package:my_timer/app/resources/text_style_manager.dart';
import 'package:my_timer/app/widgets/my_timer_form_widget.dart';
import 'package:my_timer/app/widgets/my_timer_textfield_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizesManager.s12),
            Center(
              child: Text('HomeView is working',
                  style: TextStyleManager.getMediumStyle(
                      color: ColorManager.black, fontSize: FontsManager.s24)),
            ),
            SizedBox(height: SizesManager.s12),
            Text(
              'Normal sin Label',
              style: TextStyleManager.getMediumStyle(
                color: ColorManager.darkGray,
                fontSize: FontsManager.s18,
              ),
            ),
            SizedBox(height: SizesManager.s12),
            MyTimerTextFieldWidget(name: 'name'),
            SizedBox(height: SizesManager.s12),
            Text(
              'Normal',
              style: TextStyleManager.getMediumStyle(
                color: ColorManager.darkGray,
                fontSize: FontsManager.s18,
              ),
            ),
            SizedBox(height: SizesManager.s12),
            MyTimerTextFieldWidget(name: 'name', label: 'name'),
            SizedBox(height: SizesManager.s12),
            Text(
              'Con Suffix (Widget)',
              style: TextStyleManager.getMediumStyle(
                color: ColorManager.darkGray,
                fontSize: FontsManager.s18,
              ),
            ),
            SizedBox(height: SizesManager.s12),
            MyTimerTextFieldWidget(
              name: 'name',
              label: 'Nombre',
              suffixWidget: Icon(
                Icons.remove_red_eye_rounded,
                color: ColorManager.secondary,
              ),
            ),
            SizedBox(height: SizesManager.s12),
            Text(
              'Con Prefix (Widget)',
              style: TextStyleManager.getMediumStyle(
                color: ColorManager.darkGray,
                fontSize: FontsManager.s18,
              ),
            ),
            SizedBox(height: SizesManager.s12),
            MyTimerTextFieldWidget(
              name: 'name',
              label: 'Nombre',
              prefixWidget: Icon(
                Icons.remove_red_eye_rounded,
                color: ColorManager.secondary,
              ),
            ),
            SizedBox(height: SizesManager.s12),
            Text(
              'Con Contador',
              style: TextStyleManager.getMediumStyle(
                color: ColorManager.darkGray,
                fontSize: FontsManager.s18,
              ),
            ),
            SizedBox(height: SizesManager.s12),
            MyTimerTextFieldWidget(
              name: 'name',
              label: 'Nombre',
              showCounter: true,
            ),
            SizedBox(height: SizesManager.s12),
            Text(
              'Con Contador / Max Length',
              style: TextStyleManager.getMediumStyle(
                color: ColorManager.darkGray,
                fontSize: FontsManager.s18,
              ),
            ),
            SizedBox(height: SizesManager.s12),
            MyTimerTextFieldWidget(
              name: 'name',
              label: 'Nombre',
              maxLength: 30,
              showCounter: true,
            ),
            SizedBox(height: SizesManager.s12),
            Text(
              'Con Error',
              style: TextStyleManager.getMediumStyle(
                color: ColorManager.darkGray,
                fontSize: FontsManager.s18,
              ),
            ),
            SizedBox(height: SizesManager.s12),
            MyTimerTextFieldWidget(
              name: 'name',
              label: 'Nombre',
              errorWidget: Text(
                'error',
                style: TextStyleManager.getSemiBoldStyle(
                  color: Colors.red,
                  fontSize: FontsManager.s16,
                ),
              ),
            ),
            SizedBox(height: SizesManager.s12),
            SizedBox(
              height: 140.0,
              child: MyTimerFormWidget(
                formKey: formKey,
                fields: [
                  MyTimerTextFieldWidget(
                    name: 'name',
                    label: 'name',
                    formValidators: [
                      FormBuilderValidators.required(
                          errorText: 'The name is required'),
                    ],
                  ),
                  MyTimerTextFieldWidget(
                    name: 'password',
                    label: 'password',
                    obscureText: true,
                    formValidators: [
                      FormBuilderValidators.required(
                          errorText: 'The password is required')
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: SizesManager.s12),
            ElevatedButton(
                onPressed: () {
                  print(formKey.currentState!.validate());
                },
                child: Text('Accion')),
            SizedBox(height: SizesManager.s12),
          ],
        ),
      ),
    );
  }
}
