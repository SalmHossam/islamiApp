import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Tabs/HadeathDetails.dart';
import 'package:islami_app/hadethModel.dart';
import 'package:islami_app/myThemeData.dart';

class AhadethTab extends StatelessWidget {
  static const String routeName=" AhadethTab";
  List<HadeathModel>allAhadethList=[];
  @override
  Widget build(BuildContext context) {
    loadHadeth();
    return
      Column(
      children: [
        Center(child: Image.asset('assets/images/Ahadeath.png')),
        Divider(color: MyThemeData.primaryColor,thickness: 2,),
        Text('Ahadeath',style:Theme.of(context).
                 textTheme.bodyMedium!.copyWith(
          color: Colors.black
        ),),
        Divider(color: MyThemeData.primaryColor,thickness: 2,),
        Expanded(
          child: ListView.separated(separatorBuilder:(context, index) =>
              Divider(color: MyThemeData.primaryColor,thickness: 1,indent: 40,endIndent: 40),itemBuilder:
          (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context,
                    HadeathDetails.routeName,arguments: allAhadethList[index]);
              },
              child: Center(
                child: Text(allAhadethList[index].title,style:
                Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.black
                )),
              ),
            );
          },itemCount: allAhadethList.length,
            scrollDirection: Axis.vertical,

          ),
        )
      ],
    );
  }
  void loadHadeth () async {
    String Ahadeth=await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>ahadethList=Ahadeth.split('#');

    for(int i=0;i<ahadethList.length;i++){
      String hadethOne=ahadethList[i];
      List<String> hadethOneLines=hadethOne.trim().split('\n');
      String title=hadethOneLines[0];

      hadethOneLines.removeAt(0);
      List <String> content=hadethOneLines;
      HadeathModel headthModel=HadeathModel(title,content);
      allAhadethList.add(headthModel);
    }
  }
}
