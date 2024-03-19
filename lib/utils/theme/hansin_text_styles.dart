import 'package:flutter/material.dart';


abstract class HansinTextStyles {

  /// Font family name
  static const fontFamily = 'Sanhgm';

  /// Creates a [TextTheme] from the text styles.
  static TextTheme get textTheme => const TextTheme(
    labelLarge: buttonLarge,
    titleMedium: subtitle1,
    titleSmall: subtitle2,
    labelSmall: overline,
    bodyLarge: body1,
    bodyMedium: body2,
    bodySmall: caption,
  );

  /// headline4
  static const TextStyle headline4 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 36,
    letterSpacing: 0.09,
  );

  /// headline4Bold
  static const TextStyle headline4Bold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 36,
    letterSpacing: 0.09,
  );

  /// headline5
  static const TextStyle headline5 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 26,
  );

  /// headline5Bold
  static const TextStyle headline5Bold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 26,
  );

  /// headline6
  static const TextStyle headline6 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 21,
    letterSpacing: 0.03,
  );

  /// headline6Bold
  static const TextStyle headline6Bold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 21,
    letterSpacing: 0.03,
  );

  /// subtitle1
  static const TextStyle subtitle1 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 17,
    letterSpacing: 0.03,
  );

  /// subtitle1Bold
  static const TextStyle subtitle1Bold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 17,
    letterSpacing: 0.03,
  );

  /// subtitle2
  static const TextStyle subtitle2 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 15,
    letterSpacing: 0.02,
  );

  /// subtitle2Bold
  static const TextStyle subtitle2Bold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 15,
    letterSpacing: 0.02,
  );

  /// body1
  static const TextStyle body1 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 17,
    letterSpacing: 0.09,
  );

  /// body1Bold
  static const TextStyle body1Bold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 17,
    letterSpacing: 0.09,
  );

  /// body2
  static const TextStyle body2 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 15,
    height: 1.26,
    letterSpacing: 0.25,
  );

  /// body2Bold
  static const TextStyle body2Bold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 15,
    height: 1.135,
    letterSpacing: 0.25,
  );

  /// buttonLarge
  static const TextStyle buttonLarge = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 17,
    height: 1.41,
    letterSpacing: 0.21,
  );

  /// buttonLargeBold
  static const TextStyle buttonLargeBold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 17,
    height: 1.41,
    letterSpacing: 0.21,
  );

  /// buttonMedium
  static const TextStyle buttonMedium = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.14,
    letterSpacing: 0.17,
  );

  /// buttonMediumBold
  static const TextStyle buttonMediumBold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    height: 1.14,
    letterSpacing: 0.17,
  );

  /// buttonSmall
  static const TextStyle buttonSmall = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.33,
    letterSpacing: 0.15,
  );

  /// buttonSmallBold
  static const TextStyle buttonSmallBold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 12,
    height: 1.33,
    letterSpacing: 0.15,
  );

  /// caption
  static const TextStyle caption = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    letterSpacing: 0.05,
  );

  /// captionBold
  static const TextStyle captionBold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 13,
    letterSpacing: 0.05,
  );

  /// overline
  static const TextStyle overline = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 11,
    letterSpacing: 0.17,
  );

  /// overlineBold
  static const TextStyle overlineBold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 11,
    letterSpacing: 0.17,
  );
}