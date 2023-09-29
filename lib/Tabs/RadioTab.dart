import 'package:flutter/material.dart';
import 'package:islami_app/myThemeData.dart';

class RadioTab extends StatelessWidget {
  static const String routeName=" RadioTab";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 100,),
          Image(image: AssetImage('assets/images/RadioImage.png')),
          SizedBox(height: 40,),
          Text('اذاعة القرآن الكريم',style:Theme.of(context).textTheme.bodyLarge,),
          SizedBox(height: 40,),
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.skip_previous,color:MyThemeData.primaryColor,size: 60,),
              SizedBox(width: 20,),
              Icon(Icons.play_arrow,color:MyThemeData.primaryColor,size: 60,),
              SizedBox(width: 20,),
              Icon(Icons.skip_next,color:MyThemeData.primaryColor,size: 60,),
            ],
          )
        ],

      ),
    );
  }
}
