import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Home.dart';
import 'package:islami_app/Tabs/AhadethTab.dart';
import 'package:islami_app/Tabs/HadeathDetails.dart';
import 'package:islami_app/Tabs/QuranTab.dart';
import 'package:islami_app/Tabs/RadioTab.dart';
import 'package:islami_app/Tabs/SebhaTab.dart';
import 'package:islami_app/Tabs/SettingsTab.dart';
import 'package:islami_app/Tabs/SuraDetails.dart';
import 'package:islami_app/myThemeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        SuraDetails.routeName:(context)=>SuraDetails(),
        HadeathDetails.routeName:(context)=>HadeathDetails()


      },
      theme:MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,

    );
  }
}