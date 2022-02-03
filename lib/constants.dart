import 'package:flutter/cupertino.dart';

const kBaseFont = 'Manrope';
const kBaseFontSize = 17.0;
const kBaseFontWeight = FontWeight.w600;

const kAccentColorLight = Color(0xFF0088FF);
const kAccentForegroundColorLight = Color(0xFFFFFFFF);
const kPrimaryColorLight = Color(0xFFFFFFFF);
const kBackgroundColorLight = Color(0xFFF2F3F4);
const kForegroundColorLight = Color(0xFF222324);

const kAppThemeLight = CupertinoThemeData(
  brightness: Brightness.light,
  primaryColor: kAccentColorLight,
  primaryContrastingColor: kAccentForegroundColorLight,
  barBackgroundColor: kPrimaryColorLight,
  scaffoldBackgroundColor: kBackgroundColorLight,
  textTheme: CupertinoTextThemeData(
    textStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: kBaseFontWeight,
      fontSize: kBaseFontSize,
      color: kForegroundColorLight,
    ),
    actionTextStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: kBaseFontWeight,
      fontSize: kBaseFontSize,
      color: kAccentColorLight,
    ),
    tabLabelTextStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: kBaseFontWeight,
      fontSize: kBaseFontSize * 0.75,
      color: kAccentForegroundColorLight,
    ),
    navTitleTextStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: kBaseFontWeight,
      fontSize: kBaseFontSize * 1,
      color: kAccentForegroundColorLight,
    ),
    navLargeTitleTextStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: FontWeight.w900,
      fontSize: kBaseFontSize * 1.75,
      color: kAccentForegroundColorLight,
    ),
    navActionTextStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: kBaseFontWeight,
      fontSize: kBaseFontSize,
      color: kAccentForegroundColorLight,
    ),
    pickerTextStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: kBaseFontWeight,
      fontSize: kBaseFontSize,
      color: kForegroundColorLight,
    ),
    dateTimePickerTextStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: kBaseFontWeight,
      fontSize: kBaseFontSize,
      color: kForegroundColorLight,
    ),
  ),
);

const kAccentColorDark = Color(0xFF0088FF);
const kAccentForegroundColorDark = Color(0xFFFFFFFF);
const kPrimaryColorDark = Color(0xFFFFFFFF);
const kBackgroundColorDark = Color(0xFFF2F3F4);
const kForegroundColorDark = Color(0xFF0088FF);

const kAppThemeDark = CupertinoThemeData(
  brightness: Brightness.dark,
  primaryColor: kAccentColorDark,
  primaryContrastingColor: kAccentForegroundColorDark,
  barBackgroundColor: kPrimaryColorDark,
  scaffoldBackgroundColor: kBackgroundColorDark,
  textTheme: CupertinoTextThemeData(
    textStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: kBaseFontWeight,
      fontSize: kBaseFontSize,
      color: kForegroundColorDark,
    ),
    actionTextStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: kBaseFontWeight,
      fontSize: kBaseFontSize,
      color: kAccentColorDark,
    ),
    tabLabelTextStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: kBaseFontWeight,
      fontSize: kBaseFontSize * 0.75,
      color: kAccentForegroundColorDark,
    ),
    navTitleTextStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: kBaseFontWeight,
      fontSize: kBaseFontSize * 1.5,
      color: kAccentForegroundColorDark,
    ),
    navLargeTitleTextStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: FontWeight.w800,
      fontSize: kBaseFontSize * 2,
      color: kAccentForegroundColorDark,
    ),
    navActionTextStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: kBaseFontWeight,
      fontSize: kBaseFontSize,
      color: kAccentForegroundColorDark,
    ),
    pickerTextStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: kBaseFontWeight,
      fontSize: kBaseFontSize,
      color: kForegroundColorDark,
    ),
    dateTimePickerTextStyle: TextStyle(
      fontFamily: kBaseFont,
      fontWeight: kBaseFontWeight,
      fontSize: kBaseFontSize,
      color: kForegroundColorDark,
    ),
  ),
);
