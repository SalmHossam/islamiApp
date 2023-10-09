import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Tabs/AhadethTab.dart';
import 'package:islami_app/Tabs/QuranTab.dart';
import 'package:islami_app/Tabs/RadioTab.dart';
import 'package:islami_app/Tabs/SebhaTab.dart';
import 'package:islami_app/Tabs/SettingsTab.dart';
import 'package:islami_app/myThemeData.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var index=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Image.asset('assets/images/img.png',width:double.infinity ,),
        Scaffold(
          backgroundColor:MyThemeData.lightTheme.scaffoldBackgroundColor,
        appBar: AppBar(
              title:Text("Islami",style:Theme.of(context).textTheme.bodyLarge
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
              backgroundColor: MyThemeData.primaryColor,
               iconSize: 40,
              items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran2.png')),
                label: "Qureen", backgroundColor: MyThemeData.primaryColor
            ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: "Sebha", backgroundColor: MyThemeData.primaryColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/Quran.png')),
                label: "Ahadeth", backgroundColor: MyThemeData.primaryColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: "Radio", backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(icon: Icon(Icons.settings),
                    label: "Setting", backgroundColor: MyThemeData.primaryColor),
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
