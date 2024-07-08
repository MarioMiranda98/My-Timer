import 'package:flutter/material.dart';
import 'package:my_timer/app/resources/color_manager.dart';
import 'package:my_timer/app/resources/font_manager.dart';
import 'package:my_timer/app/resources/padding_manager.dart';
import 'package:my_timer/app/resources/sizes_manager.dart';
import 'package:my_timer/app/resources/text_style_manager.dart';

class ThemeManager {
  static ThemeData getApplicationTheme() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryLight,
      primaryColorDark: ColorManager.black,
      disabledColor: ColorManager.gray,
      splashColor: ColorManager.primaryOpacity70,
      scaffoldBackgroundColor: ColorManager.backgroundColor,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: ColorManager.primary,
        onPrimary: ColorManager.primaryOpacity70,
        secondary: ColorManager.secondary,
        onSecondary: ColorManager.secondaryOpacity70,
        error: ColorManager.error,
        onError: ColorManager.onError,
        surface: ColorManager.backgroundColor,
        onSurface: ColorManager.white,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: 4.0,
        shadowColor: ColorManager.primaryOpacity70,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyleManager.getSemiBoldStyle(
            color: ColorManager.black, fontSize: FontsManager.s16),
        displayMedium: TextStyleManager.getRegularStyle(
            color: ColorManager.white, fontSize: FontsManager.s16),
        displaySmall: TextStyleManager.getBoldStyle(
            color: ColorManager.primary, fontSize: FontsManager.s16),
        headlineMedium: TextStyleManager.getRegularStyle(
            color: ColorManager.primary, fontSize: FontsManager.s14),
        titleMedium: TextStyleManager.getMediumStyle(
            color: ColorManager.lightGray, fontSize: FontsManager.s14),
        titleSmall: TextStyleManager.getMediumStyle(
            color: ColorManager.primary, fontSize: FontsManager.s14),
        bodyLarge: TextStyleManager.getRegularStyle(color: ColorManager.black),
        bodyMedium: TextStyleManager.getRegularStyle(color: ColorManager.white),
        bodySmall: TextStyleManager.getRegularStyle(color: ColorManager.gray),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(PaddingManager.p8),
        hintStyle: TextStyleManager.getRegularStyle(color: ColorManager.gray),
        labelStyle:
            TextStyleManager.getRegularStyle(color: ColorManager.darkGray),
        errorStyle: TextStyleManager.getRegularStyle(color: ColorManager.error),
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.gray, width: SizesManager.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(SizesManager.s8))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorManager.primary, width: SizesManager.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(SizesManager.s8))),
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: SizesManager.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(SizesManager.s8))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorManager.primary, width: SizesManager.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(SizesManager.s8))),
      ),
    );
  }
}
