import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Models/SuraModel.dart';
import 'package:islami_app/Provider/FirstProvider.dart';
import 'package:provider/provider.dart';

import '../Style/myThemeData.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName="SuraDetail";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String>verses=[

  ];

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<FirstProvider>(context);
    var args=ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){
      loadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image:
        AssetImage(pro.modeApp==ThemeMode.light?'assets/images/img.png':
        'assets/images/darkbg.png'))
      ),
      child: Scaffold(
        appBar: AppBar(

          title:Text(args.SuraName,style:
          Theme.of(context).textTheme.bodyLarge,)
        ),
        body:Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            elevation: 12,
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(18),
              side: BorderSide(
                color: pro.modeApp=='light'?MyThemeData.primaryColor:MyThemeData.darkprimaryColor,
              )
            ) ,
            child: ListView.separated(separatorBuilder:
                (context, index) => Divider(
                  color: pro.modeApp=='light'?MyThemeData.primaryColor:MyThemeData.darkprimaryColor,
                  thickness: 1,
                  endIndent: 40,
                  indent: 40,
                ),
                itemBuilder: (context,index){
                   return Directionality(
                     textDirection: TextDirection.rtl,
                     child: Text(verses[index],
                         textAlign: TextAlign.center
                         ,style:
                       Theme.of(context).textTheme.bodySmall!.copyWith(
                         fontSize: 20,
                       )
                       ,),
                   );
                },
              itemCount: verses.length,
            ),
          ),
        ) ,
      ),
    );

  }

  loadFile(int index) async{
    String file=await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String>lines=file.split("\n");
    verses=lines;
    setState(() {

    });
  }
}
