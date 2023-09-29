import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyThemeData{
  static Color primaryColor=Color (0xFFB7935F);
  static Color blackColor=Color (0xFF242424);
  static ThemeData lightTheme=ThemeData(
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
}
