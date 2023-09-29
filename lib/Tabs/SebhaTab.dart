import 'package:flutter/material.dart';
import 'package:islami_app/myThemeData.dart';

class SebhaTab extends StatelessWidget {
  static const String routeName=" SebhaTab";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [Container(
            child: Image.asset('assets/images/headSebha.png',width: 75),
          ),
            Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(height: 70,),
                    Image.asset('assets/images/bodySebha.png',width: 220,),
                  ],
                )),
          ],
        ),
        SizedBox(height: 30,),
        Text('عدد التسبيحات',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: Colors.black
        ),),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:25,horizontal:25),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: Color(0xFFB7935F)),
           child: Center(child: Text('30',style:Theme.of(context).textTheme.bodySmall,)),

          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:25,horizontal:25),
          child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                color: MyThemeData.primaryColor),
            child: Center(child: Text('سبحان الله',
              style:Theme.of(context).textTheme.bodyMedium,)),

          ),
        ),

      ],
    );
  }
}
