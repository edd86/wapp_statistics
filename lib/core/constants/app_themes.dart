import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static ThemeData getLightTheme(BuildContext context) => ThemeData(
    textTheme: GoogleFonts.comfortaaTextTheme(Theme.of(context).textTheme),
    colorScheme: ColorScheme.light(
      primary: Color(0xFF006d77),
      secondary: Color(0xFF57ba8d),
      tertiary: Color(0xFF83C4BC),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(iconColor: WidgetStatePropertyAll(Color(0xFF006d77))),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xFF83C4BC)),
        foregroundColor: WidgetStatePropertyAll(Color(0xFF006d77)),
      ),
    ),
  );

  static ThemeData getDarkTheme(BuildContext context) => ThemeData(
    textTheme: GoogleFonts.comfortaaTextTheme(
      Theme.of(context).textTheme.apply(
        bodyColor: Color(0xFFeff6f7),
        displayColor: Color(0xFF83C4BC),
      ),
    ),
    colorScheme: ColorScheme.dark(
      primary: Color(0xFF83C4BC),
      surface: Color(0xFF121212),
      onSurfaceVariant: Color(0xFFeff6f7),
      secondary: Color(0xFF57ba8d),
      tertiary: Color(0xFF006d77),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(iconColor: WidgetStatePropertyAll(Color(0xFF83C4BC))),
    ),
    cardTheme: CardThemeData(
      color: Color(0xFF006d77),
      elevation: 3,
      shadowColor: Color(0xFFeff6f7),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xFF006d77)),
        foregroundColor: WidgetStatePropertyAll(Color(0xFFeff6f7)),
      ),
    ),
  );
}
