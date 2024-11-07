import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_fonts.dart';

abstract class AppStyles {
  static TextStyle? getThinStyle({
    double fontSize = 12,
    Color color = AppColors.white,
    String fontFamily = AppFonts.raleway,
    TextDecoration textDecoration = TextDecoration.none,
    double height = 1,
    Color decorationColor= AppColors.black,
  }) =>
      TextStyle(
        fontSize: fontSize,
        height: height,
        decoration: textDecoration,
        fontWeight: FontWeight.w100,
        color: color,
        fontFamily: fontFamily,
        decorationColor: decorationColor,
        decorationThickness: 2
      );

  static TextStyle? getExtraLightStyle({
    double fontSize = 12,
    Color color = AppColors.white,
    String fontFamily = AppFonts.raleway,
    TextDecoration textDecoration = TextDecoration.none,
    double height = 1,
    Color decorationColor= AppColors.black,
  }) =>
      TextStyle(
        fontSize: fontSize,
        height: height,
        decoration: textDecoration,
        fontWeight: FontWeight.w200,
        color: color,
        fontFamily: fontFamily,
        decorationColor: decorationColor,
        decorationThickness: 2
      );

  static TextStyle? getLightStyle({
    double fontSize = 12,
    Color color = AppColors.white,
    String fontFamily = AppFonts.raleway,
    TextDecoration textDecoration = TextDecoration.none,
    double height = 1,
    Color decorationColor= AppColors.black,
  }) =>
      TextStyle(
        fontSize: fontSize,
        height: height,
        decoration: textDecoration,
        fontWeight: FontWeight.w300,
        color: color,
        fontFamily: fontFamily,
        decorationColor: decorationColor,
        decorationThickness: 2
      );

  static TextStyle? getRegularStyle({
    double fontSize = 12,
    Color color = AppColors.white,
    String fontFamily = AppFonts.raleway,
    TextDecoration textDecoration = TextDecoration.none,
    double height = 1,
    Color decorationColor= AppColors.black,
  }) =>
      TextStyle(
        fontSize: fontSize,
        height: height,
        decoration: textDecoration,
        fontWeight: FontWeight.w400,
        color: color,
        fontFamily: fontFamily,
        decorationColor: decorationColor,
        decorationThickness: 2
      );

  static TextStyle? getMediumStyle({
    double fontSize = 12,
    Color color = AppColors.white,
    String fontFamily = AppFonts.raleway,
    TextDecoration textDecoration = TextDecoration.none,
    double height = 1,
    Color decorationColor= AppColors.black,
  }) =>
      TextStyle(
        fontSize: fontSize,
        height: height,
        decoration: textDecoration,
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: fontFamily,
        decorationColor: decorationColor,
        decorationThickness: 2
      );

  static TextStyle? getSemiBoldStyle({
    double fontSize = 12,
    Color color = AppColors.white,
    String fontFamily = AppFonts.raleway,
    TextDecoration textDecoration = TextDecoration.none,
    double height = 1,
    Color decorationColor= AppColors.black,
  }) =>
      TextStyle(
        fontSize: fontSize,
        height: height,
        decoration: textDecoration,
        fontWeight: FontWeight.w600,
        color: color,
        fontFamily: fontFamily,
        decorationColor: decorationColor,
        decorationThickness: 2
      );

  static TextStyle? getBoldStyle({
    double fontSize = 12,
    Color color = AppColors.white,
    String fontFamily = AppFonts.raleway,
    TextDecoration textDecoration = TextDecoration.none,
    double height = 1,
    Color decorationColor= AppColors.black,
  }) =>
      TextStyle(
        fontSize: fontSize,
        height: height,
        decoration: textDecoration,
        fontWeight: FontWeight.w700,
        color: color,
        fontFamily: fontFamily,
        decorationColor: decorationColor,
        decorationThickness: 2
      );

  static TextStyle? getExtraBoldStyle({
    double fontSize = 12,
    Color color = AppColors.white,
    String fontFamily = AppFonts.raleway,
    TextDecoration textDecoration = TextDecoration.none,
    double height = 1,
    Color decorationColor= AppColors.black,
  }) =>
      TextStyle(
        fontSize: fontSize,
        height: height,
        decoration: textDecoration,
        fontWeight: FontWeight.w800,
        color: color,
        fontFamily: fontFamily,
        decorationColor: decorationColor,
        decorationThickness: 2
      );

  static TextStyle? getThickStyle({
    double fontSize = 12,
    Color color = AppColors.white,
    String fontFamily = AppFonts.raleway,
    TextDecoration textDecoration = TextDecoration.none,
    double height = 1,
    Color decorationColor= AppColors.black,
  }) =>
      TextStyle(
        fontSize: fontSize,
        height: height,
        decoration: textDecoration,
        fontWeight: FontWeight.w900,
        color: color,
        fontFamily: fontFamily,
        decorationColor: decorationColor,
        decorationThickness: 2
      );
}
