import 'package:flutter/material.dart';
import 'package:islami_app/Provider/FirstProvider.dart';
import 'package:provider/provider.dart';
import '../Style/myThemeData.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<FirstProvider>(context);
    return  Container(
        child:Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  pro.changeTheme(ThemeMode.light);
                },
                child: Row(
                  children: [
                    Text('Light',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: pro.modeApp==ThemeMode.light?
                        MyThemeData.primaryColor:Colors.white,
                    ),),
                    Spacer(),
                    pro.modeApp==ThemeMode.dark?SizedBox.shrink():
                    Icon(Icons.check, color: pro.modeApp==ThemeMode.light?
                    Theme.of(context).colorScheme.background:MyThemeData.blackColor,)
                  ],
                ),
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: () {
                  pro.changeTheme(ThemeMode.dark);

                },
                child: Row(
                  children: [
                    Text('Dark',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: pro.modeApp==ThemeMode.dark?
                MyThemeData.yellow:Colors.black,
                    ),),
                    Spacer(),
                    pro.modeApp==ThemeMode.light?SizedBox.shrink():
                    Icon(Icons.check,color: pro.modeApp==ThemeMode.dark?
                    Theme.of(context).colorScheme.background:MyThemeData.blackColor,)
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
