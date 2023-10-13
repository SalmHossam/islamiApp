import 'package:flutter/material.dart';
import 'package:islami_app/Home.dart';
import 'package:islami_app/Provider/FirstProvider.dart';
import 'package:islami_app/Tabs/HadeathDetails.dart';
import 'package:islami_app/Tabs/SuraDetails.dart';
import 'package:islami_app/Style/myThemeData.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=>FirstProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider2=Provider.of<FirstProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        SuraDetails.routeName:(context)=>SuraDetails(),
        HadeathDetails.routeName:(context)=>HadeathDetails()
      },
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      //locale: Locale('ar'),
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'),
      ],
      locale: Locale(provider2.LanguageCode),
      themeMode:provider2.modeApp ,
      theme:MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,

    );
  }
}