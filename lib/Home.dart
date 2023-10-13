import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Tabs/AhadethTab.dart';
import 'package:islami_app/Tabs/QuranTab.dart';
import 'package:islami_app/Tabs/RadioTab.dart';
import 'package:islami_app/Tabs/SebhaTab.dart';
import 'package:islami_app/Tabs/SettingsTab.dart';
import 'package:islami_app/Style/myThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'Provider/FirstProvider.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName="HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var index=0;

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<FirstProvider>(context);
    return Stack(
      children:[
        Image.asset(pro.modeApp==ThemeMode.light?'assets/images/img.png':
        'assets/images/darkbg.png',width:double.infinity ,),
        Scaffold(
          backgroundColor:MyThemeData.lightTheme.scaffoldBackgroundColor,
        appBar: AppBar(
              title:Text(AppLocalizations.of(context)!.appTitle,style:Theme.of(context).textTheme.bodyLarge
              ),
        ),
          body: tabs[index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
              onTap: (value) {
              index=value;
              setState(() {
              });
            },
              backgroundColor: pro.modeApp==ThemeMode.light?MyThemeData.primaryColor:MyThemeData.darkprimaryColor,
               iconSize: 40,
              items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran2.png')),
                label: "Qureen", backgroundColor: pro.modeApp==ThemeMode.light?MyThemeData.primaryColor:MyThemeData.darkprimaryColor,
            ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: "Sebha", backgroundColor: pro.modeApp==ThemeMode.light?MyThemeData.primaryColor:MyThemeData.darkprimaryColor,),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/Quran.png')),
                label: "Ahadeth", backgroundColor: pro.modeApp==ThemeMode.light?MyThemeData.primaryColor:MyThemeData.darkprimaryColor,),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: "Radio", backgroundColor: pro.modeApp==ThemeMode.light?MyThemeData.primaryColor:MyThemeData.darkprimaryColor,),
                BottomNavigationBarItem(icon: Icon(Icons.settings),
                    label: "Setting", backgroundColor: pro.modeApp==ThemeMode.light?MyThemeData.primaryColor:MyThemeData.darkprimaryColor,),
          ]

          ),

    )]);
  }
  List<Widget>tabs=[
    QuranTab(),
    SebhaTab(),
    AhadethTab(),
    RadioTab(),
    SettingsTab()

  ];
}
