import 'package:flutter/material.dart';

import '../Style/myThemeData.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        child:Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {

                },
                child: Row(
                  children: [
                    Text('Light',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: MyThemeData.primaryColor
                    ),),
                    Spacer(),
                    Icon(Icons.check,color: MyThemeData.primaryColor,)
                  ],
                ),
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: () {

                },
                child: Row(
                  children: [
                    Text('Dark',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: MyThemeData.blackColor
                    ),),
                    Spacer(),
                    Icon(Icons.check,color: MyThemeData.blackColor,)
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
