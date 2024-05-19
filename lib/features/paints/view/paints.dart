import 'package:flutter/material.dart';
import 'package:paint_tagline/core/utilis/app_colors.dart';
import 'package:paint_tagline/features/paints/data/lists/list_of_paints.dart';

import '../../all_items/data/lists/list_of_allitems.dart';

class Paints extends StatelessWidget {
  const Paints({super.key,required this.index});
  final index;
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return  GestureDetector(
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
              paints[index].productImage,width: 60,height: 60,
            ),

            Text(
              paints[index].productName,
              style:TextStyle(
                color: AppColors.blue,
                fontSize: size.width*0.01,

              ),
            ),
            Text(
              "${paints[index].productPrice} .LE",
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
