import 'package:flutter/material.dart';

class TColors {
  TColors._();

  // App Basic Colors
  static const Color primaryColor = Color(0xFF4B68FF);
  static const Color secondaryColor = Color(0xFFFFE24B);
  static const Color accentColor = Color(0xFFB0C7FF);

  // Gradient App Colors
  static const Gradient linearGradientColor = LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xFFFF9A9E),
      Color(0xFFFAD0C4),
      Color(0xFFFAD0C4),
  ]);
  
  // App Text Colors
  static const Color textPrimaryColor = Color(0xFF333333);
  static const Color textSecondaryColor = Color(0xFF6C757D);
  static const Color textAccentColor = Color(0xFFFFFFFF);

  // App Background Colors
  static const Color backgroundLightColor = Color(0xFFF6F6F6);
  static const Color backgroundDarkColor = Color(0xFF272727);
  static const Color backgroundPrimaryColor = Color(0xFFF3F5FF);
  static const Color backgroundSecondaryColor = Color(0xFFEBF0FF);

  // Background Container Colors
  static const Color containerLightColor = Color(0xFFF6F6F6);
  static Color containerDarkColor = Colors.white.withOpacity(0.1);

  // Button App Colors
  static const Color buttonPrimaryColor = Color(0xFF4B68FF);
  static const Color buttonSecondaryColor = Color(0xFF6C757D);
  static const Color buttonDisabledColor = Color(0xFFC4C4C4);

  // Border App Colors
  static const Color borderPrimaryColor = Color(0xFFD9D9D9);
  static const Color borderSecondaryColor = Color(0xFFE6E6E6);

  // Error and Validation App Colors
  static const Color errorColor = Color(0xFFD32F2F);
  static const Color successColor = Color(0xFF388E3C);
  static const Color warningColor = Color(0xFFF57C00);
  static const Color infoColor = Color(0xFF1976D2);

  // Neutral Shades App Color
  static const Color blackColor = Color(0xFF232323);
  static const Color darkerGreyColor = Color(0xFF4F4F4F);
  static const Color darkGreyColor = Color(0xFF939393);
  static const Color greyColor = Color(0xFFE0E0E0);
  static const Color softGreyColor = Color(0xFFF4F4F4);
  static const Color lightGreyColor = Color(0xFFF9F9F9);
  static const Color whiteColor = Color(0xFFFFFFFF);

  // Neutral Shades App Color AI Generated
  static const Color neutralShade50 = Color(0xFFFAFAFA);
  static const Color neutralShade100 = Color(0xFFF5F5F5);
  static const Color neutralShade200 = Color(0xFFEEEEEE);
  static const Color neutralShade300 = Color(0xFFE0E0E0);
  static const Color neutralShade400 = Color(0xFFD6D6D6);
  static const Color neutralShade500 = Color(0xFF9E9E9E);
  static const Color neutralShade600 = Color(0xFF757575);
  static const Color neutralShade700 = Color(0xFF616161);
  static const Color neutralShade800 = Color(0xFF424242);
  static const Color neutralShade900 = Color(0xFF212121);

}