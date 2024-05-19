import 'package:flutter/material.dart';
import 'package:paint_tagline/features/spray_paint/data/lists/list_of_spray_paint.dart';

import '../../../core/utilis/app_colors.dart';

class SprayPaint extends StatelessWidget {
  const SprayPaint({super.key,required this.index});
  final index;
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap:(){

      },
      child: Container(
        padding: EdgeInsets.all(5),
        width: size.width*0.03,
        height: size.height*0.06,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              sprayPaint[index].productImage,width: 60,height: 60,
            ),

            Text(
              sprayPaint[index].productName,
              style:TextStyle(
                color: AppColors.blue,
                fontSize: size.width*0.01,

              ),
            ),
            Text(
              "${sprayPaint[index].productPrice} .LE",
              style: TextStyle(
                  color: AppColors.black.withOpacity(0.70),
                  fontSize: 10
              ),
            )
          ],
        ),
      ),
    );
  }
}
