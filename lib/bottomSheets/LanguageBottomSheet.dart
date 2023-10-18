import 'package:flutter/material.dart';
import 'package:islami_app/Style/myThemeData.dart';
import 'package:provider/provider.dart';

import '../Provider/FirstProvider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<FirstProvider>(context);
    return Container(
      child:Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                provider.changeLanguage('en');
              },
              child: Row(
                children: [
                  Text('English',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: provider.LanguageCode=='en'?
                    Theme.of(context).colorScheme.background:Theme.of(context).colorScheme.onBackground,
                  ),),
                  Spacer(),
                  provider.LanguageCode=='ar'? SizedBox.shrink():
                  Icon(Icons.check,color: provider.LanguageCode=='en'?
                  Theme.of(context).colorScheme.background:Theme.of(context).colorScheme.onBackground,),
                ],
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: () {
                provider.changeLanguage('ar');
              },
              child: Row(
                children: [
                  Text('Arabic',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.LanguageCode=='ar'?
                      Theme.of(context).colorScheme.background:Theme.of(context).colorScheme.onBackground,
                  ),),
                  Spacer(),
                  provider.LanguageCode=='en'?SizedBox.shrink():
                  Icon(Icons.check,color: provider.LanguageCode=='ar'?
                  Theme.of(context).colorScheme.background:Theme.of(context).colorScheme.onBackground,)
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
