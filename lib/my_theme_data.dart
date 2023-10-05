import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = const Color(0xffB7935F);
  static Color darkPrimarty = const Color(0xff141A2E);
  static Color yellow = const Color(0xffFACC1D);
  static Color blackColor = const Color(0xff242424);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: primaryColor,
        onPrimary: Colors.white,
        secondary: blackColor,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: primaryColor,
        onBackground: blackColor,
        surface: primaryColor,
        onSurface: Colors.white),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: blackColor,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: blackColor,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: primaryColor, size: 30),
      color: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white,
      backgroundColor: primaryColor,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: darkPrimarty,
        onPrimary: Colors.white,
        secondary: yellow,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: yellow,
        onBackground: Colors.white,
        surface: darkPrimarty,
        onSurface: Colors.white),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: const Color(0xffFACC1D),
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: const Color(0xffFACC1D),
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white, size: 30),
      color: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      selectedItemColor: yellow,
      unselectedItemColor: Colors.white,
      backgroundColor: darkPrimarty,
    ),
  );
}
