import 'package:flutter/material.dart';
import 'package:islami_app/Provider/FirstProvider.dart';
import 'package:islami_app/Style/myThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  static const String routeName=" SebhaTab";

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count=0;
  double angle=0;
  int i=0;
  List<String> sebha=[
    'سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِهِ',
    '''لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ.''',
    'لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ ',
    'الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد',
    'أستغفر الله',

  ];

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<FirstProvider>(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(height: 50,),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
              child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(provider.modeApp==
                      ThemeMode.light?'assets/images/headSebha.png':'assets/images/darkHead.png',width: 75)),
            ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 79,),
                  InkWell(
                   onTap: () {
                        count++;
                        angle+=0.5;
                        if(count==100){
                        i++;
                        count=0;
                        if(i>4){
                        i=0;
                        }
                        }
                        setState(() {});
                   },
                    child: Transform.rotate(
                        angle: angle,
                        child: Image.asset(provider.modeApp==
                            ThemeMode.light?'assets/images/bodySebha.png':'assets/images/darkBody.png',width: 220,))),
                ],
              )],
          ),
          SizedBox(height: 30,),
          Text(AppLocalizations.of(context)!.counter,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: provider.modeApp==ThemeMode.light?MyThemeData.blackColor:Colors.white
          ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:25,horizontal:25),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: provider.modeApp==ThemeMode.light?MyThemeData.primaryColor:MyThemeData.darkprimaryColor),
             child: Center(child: Text(count.toString(),style:Theme.of(context).textTheme.bodySmall,)),

            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:25,horizontal:25),
            child: Container(
              padding: EdgeInsets.all(8),
              width: 400,
              height: 160,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  color: provider.modeApp==ThemeMode.light?MyThemeData.primaryColor:MyThemeData.yellow),
              child: Text(sebha[i],textAlign: TextAlign.center,
                style:Theme.of(context).textTheme.bodyMedium,),

            ),
          ),

        ],
      ),
    );
  }
}
