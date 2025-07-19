import 'package:anitha_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillDeepPurple => ElevatedButton.styleFrom(
        backgroundColor: appTheme.deepPurple300.withOpacity(0.62),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.h),
        ),
      );
  static ButtonStyle get fillIndigo => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigo300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.h),
        ),
      );
  static ButtonStyle get fillIndigoTL8 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigo300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillSecondaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.secondaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlue => OutlinedButton.styleFrom(
        backgroundColor: appTheme.whiteA70001,
        side: BorderSide(
          color: appTheme.blue70019.withOpacity(0.2),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get outlineIndigo => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.indigo300,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
