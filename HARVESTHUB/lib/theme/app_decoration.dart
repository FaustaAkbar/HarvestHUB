import 'package:flutter/material.dart';
import 'package:harvesthub/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.64),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray40001,
      );
  static BoxDecoration get fillGray400 => BoxDecoration(
        color: appTheme.gray400,
      );
  static BoxDecoration get fillGray800 => BoxDecoration(
        color: appTheme.gray800,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green5001,
      );
  static BoxDecoration get fillGreen200 => BoxDecoration(
        color: appTheme.green200,
      );
  static BoxDecoration get fillGreen900 => BoxDecoration(
        color: appTheme.green900,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA70001,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        border: Border.all(
          color: appTheme.black900.withOpacity(0.64),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.green5001,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.5),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGreen => BoxDecoration(
        color: appTheme.green5001,
        border: Border.all(
          color: appTheme.green900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGreen900 => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border.all(
          color: appTheme.green900,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder11 => BorderRadius.circular(
        11.h,
      );
  static BorderRadius get circleBorder38 => BorderRadius.circular(
        38.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder22 => BorderRadius.circular(
        22.h,
      );
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
        7.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
