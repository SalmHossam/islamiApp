import 'package:flutter/material.dart';
import 'package:islami_app/Provider/FirstProvider.dart';
import 'package:islami_app/bottomSheets/LanguageBottomSheet.dart';
import 'package:islami_app/bottomSheets/ThemeBottomSheet.dart';
import 'package:islami_app/Style/myThemeData.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  static const String routeName=" SettingsTab";

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override

  Widget build(BuildContext context) {
    var provider=Provider.of<FirstProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Language',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color:
          provider.modeApp==ThemeMode.light?MyThemeData.blackColor:Colors.white,),),
          InkWell(
            onTap:() {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(24),
              color: Colors.white,
                border: Border.all(color: MyThemeData.primaryColor)
              ),
              child: Text(provider.LanguageCode=="en"?
                  'English':'Arabic',
                style: Theme.of(context).textTheme.
                bodyMedium!.copyWith(color: Colors.black),),

            ),
          ),
          SizedBox(height: 25,),
          Text('Theme',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: provider.modeApp==ThemeMode.light?MyThemeData.blackColor:Colors.white),),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(24),
                  color: Colors.white,
                  border: Border.all(color: MyThemeData.primaryColor)
              ),
              child: Text('Light',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),),

            ),
          ),
        ],

      ),
    );
  }

  showLanguageBottomSheet(){
    showModalBottomSheet(context: context,
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.only(topRight:Radius.circular(12),
            topLeft: Radius.circular(12) )),
        builder:(context) => LanguageBottomSheet());

  }
  showThemeBottomSheet(){
    showModalBottomSheet(context: context,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(topRight:Radius.circular(12),
              topLeft: Radius.circular(12) )),
      builder:(context) => ThemeBottomSheet());

  }
}
