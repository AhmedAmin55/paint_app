import 'package:flutter/material.dart';
import 'package:paint_tagline/features/accessories/data/lists/list_of_accessories.dart';

import '../../../core/utilis/app_colors.dart';

class Accessories extends StatelessWidget {
  const Accessories({super.key,required this.index});
  final index;
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;

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
              accessories[index].productImage,width: 60,height: 60,
            ),

            Text(
              accessories[index].productName,
              style:TextStyle(
                color: AppColors.blue,
                fontSize: size.width*0.01,

              ),
            ),
            Text(
              "${accessories[index].productPrice} .LE",
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
