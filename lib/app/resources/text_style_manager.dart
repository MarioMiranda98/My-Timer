import 'package:flutter/widgets.dart';
import 'package:my_timer/app/resources/font_manager.dart';

class TextStyleManager {
  static TextStyle _getTextStyle(double fontSize, String fontFamily,
      FontWeight fontWeight, Color color, FontStyle fontStyle) {
    return TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontStyle: fontStyle,
        fontWeight: fontWeight);
  }

  static TextStyle getRegularStyle(
      {double fontSize = FontsManager.s12,
      required Color color,
      FontStyle fontStyle = FontStyle.normal}) {
    return _getTextStyle(fontSize, FontsManager.fontFamily,
        FontsManager.regular, color, fontStyle);
  }

  static TextStyle getExtraLightStyle(
      {double fontSize = FontsManager.s12,
      required Color color,
      FontStyle fontStyle = FontStyle.normal}) {
    return _getTextStyle(fontSize, FontsManager.fontFamily,
        FontsManager.extraLight, color, fontStyle);
  }

  static TextStyle getLightStyle(
      {double fontSize = FontsManager.s12,
      required Color color,
      FontStyle fontStyle = FontStyle.normal}) {
    return _getTextStyle(fontSize, FontsManager.fontFamily, FontsManager.light,
        color, fontStyle);
  }

  static TextStyle getMediumStyle(
      {double fontSize = FontsManager.s12,
      required Color color,
      FontStyle fontStyle = FontStyle.normal}) {
    return _getTextStyle(fontSize, FontsManager.fontFamily, FontsManager.medium,
        color, fontStyle);
  }

  static TextStyle getSemiBoldStyle(
      {double fontSize = FontsManager.s12,
      required Color color,
      FontStyle fontStyle = FontStyle.normal}) {
    return _getTextStyle(fontSize, FontsManager.fontFamily,
        FontsManager.semiBold, color, fontStyle);
  }

  static TextStyle getBoldStyle(
      {double fontSize = FontsManager.s12,
      required Color color,
      FontStyle fontStyle = FontStyle.normal}) {
    return _getTextStyle(
        fontSize, FontsManager.fontFamily, FontsManager.bold, color, fontStyle);
  }

  static TextStyle getExtraBoldStyle(
      {double fontSize = FontsManager.s12,
      required Color color,
      FontStyle fontStyle = FontStyle.normal}) {
    return _getTextStyle(fontSize, FontsManager.fontFamily,
        FontsManager.extraBold, color, fontStyle);
  }
}
