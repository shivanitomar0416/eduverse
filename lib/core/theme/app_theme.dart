import 'package:flutter/material.dart';
import 'package:eduverse/core/theme/app_colors.dart'; 

class AppTheme {
  // --- Dark Mode Inferred Colors (for internal use) ---
  // Using standard dark mode hexes to fill the gaps in AppColors for Dark Mode.
  static const Color _backgroundDark = Color(0xFF12141A); // Charcoal Black
  static const Color _surfaceDark = Color(0xFF1F202B);    // Slate Gray
  static const Color _secondaryTextDark = Color(0xFFA5ACB8); // Secondary Text for Dark Mode
  
  // 🌞 Light Theme - Elegant & Unique
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: 'Poppins',
    
    // Set Scaffold Background to Ivory
    scaffoldBackgroundColor: AppColors.background, 
    
    // Card/Surface Color is Ivory
    cardColor: AppColors.card,
    
    // Color Scheme uses light colors
    colorScheme: const ColorScheme.light(
      surface: AppColors.surface,       // Ivory
      onSurface: AppColors.text,        // Primary Text (Dark)
      primary: AppColors.primaryBlue,   // Deep Sapphire
      onPrimary: AppColors.onPrimary,   // White
      secondary: AppColors.warningOrange, // Amber Glow for secondary highlights
      error: AppColors.dangerRed,
    ),
    
    // AppBar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.background, // Match scaffold for seamless look
      foregroundColor: AppColors.text,
      elevation: 0.5,
      surfaceTintColor: AppColors.background,
      shadowColor: AppColors.shadow,
    ),

    // Input Fields
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.surface,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.divider), // Smoke Gray
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primaryBlue, width: 2),
      ),
      labelStyle: TextStyle(color: AppColors.disabledText),
      hintStyle: TextStyle(color: AppColors.disabled),
    ),

    // Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryBlue,
        foregroundColor: AppColors.onPrimary,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      ),
    ),
    
    // Text Theme uses light text colors
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: AppColors.text, // Primary Text
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: AppColors.text, // Primary Text
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: AppColors.text, // Primary Text
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: AppColors.disabledText, // Secondary Text
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 12,
        color: AppColors.disabled, // Smoke Gray
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: AppColors.onPrimary, // White (for buttons/chips)
      ),
    ),
  ); 

  // 🌙 Dark Theme - Elegant & Unique
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    fontFamily: 'Poppins',
    
    // Set Scaffold Background to Charcoal Black
    scaffoldBackgroundColor: _backgroundDark, 
    
    // Card/Surface Color is Slate Gray
    cardColor: _surfaceDark,

    // Color Scheme uses dark colors
    colorScheme: const ColorScheme.dark(
      surface: _surfaceDark,             // Slate Gray
      onSurface: AppColors.onPrimary,    // White (Primary Text)
      primary: AppColors.primaryBlue,    // Deep Sapphire (Branding color)
      onPrimary: AppColors.onPrimary,    // White
      secondary: AppColors.warningOrange, // Amber Glow
      error: AppColors.dangerRed,
    ),

    // AppBar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: _surfaceDark, // Match surface for floating app bar
      foregroundColor: AppColors.onPrimary,
      elevation: 0.5,
      surfaceTintColor: _surfaceDark,
      shadowColor: AppColors.shadow,
    ),
    
    // Input Fields
    inputDecorationTheme: InputDecorationTheme(
      fillColor: _surfaceDark,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: _secondaryTextDark), // Secondary dark text color as border
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primaryBlue, width: 2),
      ),
      labelStyle: TextStyle(color: _secondaryTextDark),
      hintStyle: TextStyle(color: _secondaryTextDark),
    ),

    // Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryBlueDark, // Darker Sapphire for Dark Mode Button
        foregroundColor: AppColors.onPrimary,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      ),
    ),

    // Text Theme uses dark text colors
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: AppColors.onPrimary, // White
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: AppColors.onPrimary, // White
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: AppColors.onPrimary, // White
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: _secondaryTextDark, // Secondary Text
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 12,
        color: _secondaryTextDark, // Secondary Text
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: AppColors.onPrimary, // White (for buttons/chips)
      ),
    ),
  );
}

 