import 'package:flutter/material.dart';
import 'package:islami_app/Provider/FirstProvider.dart';
import 'package:islami_app/Style/myThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class RadioTab extends StatelessWidget {
  static const String routeName=" RadioTab";

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<FirstProvider>(context);
    return Center(
      child: Column(
        children: [
          SizedBox(height: 100,),
          Image(image: AssetImage('assets/images/RadioImage.png')),
          SizedBox(height: 40,),
          Text(AppLocalizations.of(context)!.radio,style:Theme.of(context).textTheme.bodyLarge,),
          SizedBox(height: 40,),
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.skip_previous,color:provider.modeApp==ThemeMode.light?MyThemeData.primaryColor:MyThemeData.yellow,size: 60,),
              SizedBox(width: 20,),
              Icon(Icons.play_arrow,color:provider.modeApp==ThemeMode.light?MyThemeData.primaryColor:MyThemeData.yellow,size: 60,),
              SizedBox(width: 20,),
              Icon(Icons.skip_next,color:provider.modeApp==ThemeMode.light?MyThemeData.primaryColor:MyThemeData.yellow,size: 60,),
            ],
          )
        ],

      ),
    );
  }
}
