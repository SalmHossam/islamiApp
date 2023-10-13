import 'package:flutter/material.dart';
import 'package:islami_app/Models/hadethModel.dart';

import '../Style/myThemeData.dart';

class HadeathDetails extends StatelessWidget {
  const HadeathDetails({super.key});
  static const String routeName='HadeathDetails';
  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as HadeathModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image:
          AssetImage('assets/images/img.png'))
      ),
      child: Scaffold(
        appBar: AppBar(

            title:Text(args.title,style:
            Theme.of(context).textTheme.bodyLarge,)
        ),
        body:Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            elevation: 12,
            shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(18),
                side: BorderSide(
                  color: MyThemeData.primaryColor,
                )
            ) ,
            child: ListView.builder(
              itemBuilder: (context,index){
                return Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(args.content[index],
                    textAlign: TextAlign.center
                    ,style:
                    Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 20,
                    )
                    ,),
                );
              },
              itemCount: args.content.length,
            ),
          ),
        ) ,
      ),
    );
  }
}
