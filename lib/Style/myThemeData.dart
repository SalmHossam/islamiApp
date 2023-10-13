import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyThemeData{
  static Color primaryColor=Color (0xFFB7935F);
  static Color darkprimaryColor=Color (0xFF141A2E);
  static Color blackColor=Color (0xFF242424);
  static Color yellow=Color(0xffFACC1D);
  static ThemeData lightTheme=ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.white,
          onPrimary: blackColor,
          secondary: blackColor,
          onSecondary: blackColor,
          error: Colors.red,
          onError: Colors.white,
          background: primaryColor,
          onBackground: blackColor,
          surface: primaryColor,
          onSurface: Colors.white),
      textTheme:TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black
        ),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Colors.white
        ) ,
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black

        ),
      ),
      scaffoldBackgroundColor:Colors.transparent,
      appBarTheme: AppBarTheme(
          color:Colors.transparent,
          elevation: 0.0,
          centerTitle: true
      ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      selectedItemColor: Colors.black,
        backgroundColor: primaryColor,
      unselectedItemColor: Colors.white,

    )
  );
  static ThemeData darkTheme=ThemeData(
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.white,
        onPrimary: blackColor,
        secondary: yellow,
        onSecondary: blackColor,
        error: Colors.red,
        onError: Colors.white,
        background: yellow,
        onBackground: Colors.white,
        surface: darkprimaryColor,
        onSurface: Colors.white),
      textTheme:TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: yellow
        ),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Colors.white
        ) ,
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white

        ),
      ),
      scaffoldBackgroundColor:Colors.transparent,
      appBarTheme: AppBarTheme(
          color:Colors.transparent,
          elevation: 0.0,
          centerTitle: true
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Color(0xffFACC1D),
        backgroundColor: darkprimaryColor,
        unselectedItemColor: Colors.white,

      )
  );
}
