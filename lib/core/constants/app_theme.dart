import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme {
  // Light Theme
  static ThemeData lightTheme() {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.background,
        error: AppColors.error,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: AppColors.primaryText,
        onError: Colors.white,
      ),
      scaffoldBackgroundColor: AppColors.background,
      // Text theme
      textTheme: TextTheme(
        displayLarge: GoogleFonts.lato(color: AppColors.primaryText),
        displayMedium: GoogleFonts.lato(color: AppColors.secondaryText),
        displaySmall: GoogleFonts.lato(color: AppColors.primaryText, fontWeight: FontWeight.bold),
        headlineMedium: GoogleFonts.lato(color: AppColors.primaryText),
        titleLarge: GoogleFonts.lato(color: AppColors.primaryText),
        bodyLarge: GoogleFonts.lato(color: AppColors.primaryText),
        bodyMedium: GoogleFonts.lato(color: AppColors.secondaryText),
        bodySmall: GoogleFonts.lato(color: AppColors.primaryText),
      ),
      // AppBar theme
      appBarTheme:  AppBarTheme(
        backgroundColor: AppColors.primary,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: GoogleFonts.lato(color: Colors.white, fontSize: 20),
      ),
      // ElevatedButton theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.primary),
          foregroundColor: WidgetStateProperty.all(Colors.white),
        ),
      ),
      // Floating action button theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: AppColors.secondary),
      // Bottom Navigation theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.background,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.secondaryText,
      ),
    );
  }

  // Dark Theme
  static ThemeData darkTheme() {
    return ThemeData(
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryDark,
        secondary: AppColors.secondaryDark,
        surface: AppColors.backgroundDark,
        error: AppColors.errorDark,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: AppColors.primaryTextDark,
        onError: Colors.white,
      ),
      scaffoldBackgroundColor: AppColors.backgroundDark,
      // Text theme
      textTheme: TextTheme(
        displayLarge: GoogleFonts.lato(color: AppColors.primaryTextDark),
        displayMedium: GoogleFonts.lato(color: AppColors.secondaryTextDark),
        displaySmall: GoogleFonts.lato(color: AppColors.primaryTextDark, fontWeight: FontWeight.bold),
        headlineMedium: GoogleFonts.lato(color: AppColors.primaryTextDark),
        titleLarge: GoogleFonts.lato(color: AppColors.primaryTextDark),
        bodyLarge: GoogleFonts.lato(color: AppColors.primaryTextDark),
        bodyMedium: GoogleFonts.lato(color: AppColors.secondaryTextDark),
        bodySmall: GoogleFonts.lato(color: AppColors.primaryTextDark),
      ),
      // AppBar theme
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryDark,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: GoogleFonts.lato(color: Colors.white, fontSize: 20),
      ),
      // ElevatedButton theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.primaryDark),
          foregroundColor: WidgetStateProperty.all(Colors.white),
        ),
      ),
      // Floating action button theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: AppColors.secondaryDark),
      // Bottom Navigation theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.backgroundDark,
        selectedItemColor: AppColors.primaryDark,
        unselectedItemColor: AppColors.secondaryTextDark,
      ),
    );
  }
}
