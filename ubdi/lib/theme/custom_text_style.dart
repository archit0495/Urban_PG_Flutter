import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Antic text style
  static get anticSlabWhiteA70001 => TextStyle(
        color: appTheme.whiteA70001,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).anticSlab;
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeAnticSlab => theme.textTheme.bodyLarge!.anticSlab;
  static get bodyLargeAnticSlabGray70001 =>
      theme.textTheme.bodyLarge!.anticSlab.copyWith(
        color: appTheme.gray70001,
      );
  static get bodyLargeAnticSlabPrimary =>
      theme.textTheme.bodyLarge!.anticSlab.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
      );
  static get bodyLargeGray70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray70001,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray70001_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray70001,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodyMediumBigshotOneGray80001 =>
      theme.textTheme.bodyMedium!.bigshotOne.copyWith(
        color: appTheme.gray80001,
        fontSize: 15.fSize,
      );
  static get bodyMediumBigshotOnePrimary =>
      theme.textTheme.bodyMedium!.bigshotOne.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumIBMPlexSansGray700 =>
      theme.textTheme.bodyMedium!.iBMPlexSans.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumIBMPlexSansPrimary =>
      theme.textTheme.bodyMedium!.iBMPlexSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.64),
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmall9e8e71e0 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0X9E8E71E0),
        fontSize: 12.fSize,
      );
  static get bodySmallBigshotOne =>
      theme.textTheme.bodySmall!.bigshotOne.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBigshotOneOnSecondaryContainer =>
      theme.textTheme.bodySmall!.bigshotOne.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.53),
        fontSize: 12.fSize,
      );
  static get bodySmallBigshotOnePrimary =>
      theme.textTheme.bodySmall!.bigshotOne.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
        fontSize: 12.fSize,
      );
  static get bodySmallBigshotOnePrimary12 =>
      theme.textTheme.bodySmall!.bigshotOne.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.64),
        fontSize: 12.fSize,
      );
  static get bodySmallBigshotOnePrimary12_1 =>
      theme.textTheme.bodySmall!.bigshotOne.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.53),
        fontSize: 12.fSize,
      );
  static get bodySmallCircularStd =>
      theme.textTheme.bodySmall!.circularStd.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallCircularStdBold =>
      theme.textTheme.bodySmall!.circularStdBold.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallCircularStdBoldGray70001 =>
      theme.textTheme.bodySmall!.circularStdBold.copyWith(
        color: appTheme.gray70001,
        fontSize: 12.fSize,
      );
  static get bodySmallCircularStdBook =>
      theme.textTheme.bodySmall!.circularStdBook.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallDeeppurple300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepPurple300.withOpacity(0.62),
        fontSize: 12.fSize,
      );
  static get bodySmallDeeppurple300_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepPurple300.withOpacity(0.62),
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray60012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 12.fSize,
      );
  static get bodySmallGray6009 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600.withOpacity(0.64),
        fontSize: 9.fSize,
      );
  static get bodySmallGray600_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600.withOpacity(0.53),
      );
  static get bodySmallGray600_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600.withOpacity(0.64),
      );
  static get bodySmallGray70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70001.withOpacity(0.64),
        fontSize: 12.fSize,
      );
  static get bodySmallGray7000112 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70001,
        fontSize: 12.fSize,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallGray8008 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 8.fSize,
      );
  static get bodySmallIBMPlexSansGray700 =>
      theme.textTheme.bodySmall!.iBMPlexSans.copyWith(
        color: appTheme.gray700,
        fontSize: 12.fSize,
      );
  static get bodySmallIndigo300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigo300,
        fontSize: 12.fSize,
      );
  static get bodySmallIndigo300_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigo300,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.56),
      );
  static get bodySmallPrimary12 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.64),
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary12_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary12_2 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.53),
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary12_3 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.46),
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary8 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
        fontSize: 8.fSize,
      );
  static get bodySmallPrimary8_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.53),
        fontSize: 8.fSize,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
      );
  static get bodySmallPrimary_2 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.64),
      );
  static get bodySmallPrimary_3 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.53),
      );
  static get bodySmallPrimary_4 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.49),
      );
  static get bodySmallPrimary_5 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.46),
      );
  static get bodySmallRed500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red500,
      );
  static get bodySmallSFUIDisplayGray600 =>
      theme.textTheme.bodySmall!.sFUIDisplay.copyWith(
        color: appTheme.gray600,
        fontSize: 12.fSize,
      );
  static get bodySmallSFUIDisplayPrimary =>
      theme.textTheme.bodySmall!.sFUIDisplay.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.46),
        fontSize: 12.fSize,
      );
  static get bodySmallSFUIDisplayPrimary8 =>
      theme.textTheme.bodySmall!.sFUIDisplay.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
        fontSize: 8.fSize,
      );
  static get bodySmallSFUIDisplayPrimary_1 =>
      theme.textTheme.bodySmall!.sFUIDisplay.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
      );
  static get bodySmallSFUIDisplayWhiteA70001 =>
      theme.textTheme.bodySmall!.sFUIDisplay.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 12.fSize,
      );
  static get bodySmallWhiteA70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 8.fSize,
      );
  static get bodySmallWhiteA7000112 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 12.fSize,
      );
  static get bodySmallWhiteA70001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get bodySmallff000000 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF000000),
        fontSize: 12.fSize,
      );
  static get bodySmallff7371e0 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF7371E0),
        fontSize: 12.fSize,
      );
  static get bodySmallffff4b1f => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFFF4B1F),
        fontSize: 12.fSize,
      );
  // Headline style
  static get headlineSmallAnticSlab => theme.textTheme.headlineSmall!.anticSlab;
  // Label text style
  static get labelLargeWhiteA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumGray600 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get labelMediumIndigo300 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.indigo300,
      );
  // Title text style
  static get titleLargeIBMPlexSansPrimary =>
      theme.textTheme.titleLarge!.iBMPlexSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSFUIDisplayGray70001 =>
      theme.textTheme.titleMedium!.sFUIDisplay.copyWith(
        color: appTheme.gray70001,
      );
  static get titleMediumWhiteA70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get titleSmallIBMPlexSansBlue500 =>
      theme.textTheme.titleSmall!.iBMPlexSans.copyWith(
        color: appTheme.blue500,
      );
}

extension on TextStyle {
  TextStyle get iBMPlexSans {
    return copyWith(
      fontFamily: 'IBM Plex Sans',
    );
  }

  TextStyle get sFUIDisplay {
    return copyWith(
      fontFamily: 'SF UI Display',
    );
  }

  TextStyle get circularStd {
    return copyWith(
      fontFamily: 'Circular Std',
    );
  }

  TextStyle get satoshi {
    return copyWith(
      fontFamily: 'Satoshi',
    );
  }

  TextStyle get circularStdBook {
    return copyWith(
      fontFamily: 'Circular Std Book',
    );
  }

  TextStyle get anticSlab {
    return copyWith(
      fontFamily: 'Antic Slab',
    );
  }

  TextStyle get circularStdBold {
    return copyWith(
      fontFamily: 'Circular Std Bold',
    );
  }

  TextStyle get bigshotOne {
    return copyWith(
      fontFamily: 'Bigshot One',
    );
  }
}
