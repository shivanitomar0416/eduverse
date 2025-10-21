import 'package:flutter/material.dart';

class AppColors {
  // Primary Palette (Deep Sapphire, Orchid Bloom, Amber Glow)
  static const Color primaryBlue = Color(0xFF1E3A8A); // Deep Sapphire (Primary)
  static const Color primaryBlueLight = Color(0xFFA77BFF); // Orchid Bloom (Lighter/Highlight)
  static const Color primaryBlueDark = Color(0xFF152A70); // Darker shade of Deep Sapphire for pressed

  // Semantic Colors (Success, Warning, Error)
  static const Color successGreen = Color(0xFF2AB07B); // Success
  static const Color warningOrange = Color(0xFFF2C94C); // Warning
  static const Color dangerRed = Color(0xFFE1575E); // Error

  // Greys and Neutrals (Ivory, Smoke Gray)
  static const Color text = Color(0xFF1C1F3D); // Primary Text
  static const Color background = Color(0xFFFAF9F6); // Ivory (Background)
  static const Color surface = Color(0xFFFAF9F6); // Ivory (Surface)
  static const Color card = Color(0xFFFAF9F6); // Ivory (Card)
  static const Color divider = Color(0xFFB7B9C0); // Smoke Gray
  static const Color disabled = Color(0xFFB7B9C0); // Smoke Gray
  static const Color disabledText = Color(0xFF5E6370); // Secondary Text

  // On-Colors (for text/icons placed on top of other colors)
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onSuccess = Color(0xFFFFFFFF);
  static const Color onWarning = Color(0xFF1C1F3D); // Use Primary Text for contrast on Warning
  static const Color onDanger = Color(0xFFFFFFFF);

  // Shadow
  static const Color shadow = Color(0x1F000000); // A translucent black for soft shadows
}
