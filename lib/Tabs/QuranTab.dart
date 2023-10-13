import 'package:flutter/material.dart';
import 'package:islami_app/Models/SuraModel.dart';
import 'package:islami_app/Provider/FirstProvider.dart';
import 'package:islami_app/Tabs/SuraDetails.dart';
import 'package:provider/provider.dart';

import '../Style/myThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTab extends StatefulWidget {
  static const String routeName=" QuranTab";

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<String>SuraName=[
  "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<FirstProvider>(context);
    return Column(children: [
      Center(child: Image.asset('assets/images/Quran3.png',width: 205,)),
      Divider(
        color: pro.modeApp==ThemeMode.light?MyThemeData.primaryColor:MyThemeData.yellow,
        thickness: 3,
      ),
      Text(AppLocalizations.of(context)!.suraName,style:
      Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: pro.modeApp==ThemeMode.light?MyThemeData.blackColor:Colors.white
      ),),
      Divider(
        color: pro.modeApp==ThemeMode.light?MyThemeData.primaryColor:MyThemeData.yellow,
        thickness: 3,
      ),
      Expanded(
        child: ListView.separated(separatorBuilder:
          (context, index) => Divider(color: pro.modeApp==ThemeMode.light?MyThemeData.primaryColor:MyThemeData.yellow,
          thickness: 1,
            endIndent: 40,
            indent: 40,
          ),
          itemBuilder:(context,index){
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context,
                  SuraDetails.routeName,
                arguments: SuraModel(index, SuraName[index])
              );
              
              },
            child: Center(
              child: Text(SuraName[index],style:
              Theme.of(context).textTheme.bodySmall!.copyWith(
                color:pro.modeApp==ThemeMode.light?MyThemeData.blackColor:Colors.white
              ),),
            ),
          );

        },itemCount: SuraName.length,),
      )
    ],
    );
  }
}
