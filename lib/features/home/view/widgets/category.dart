import 'package:flutter/material.dart';
import 'package:paint_tagline/features/all_items/data/lists/list_of_allitems.dart';

import '../../../../core/utilis/app_colors.dart';
import '../../../../core/utilis/app_texts.dart';
int screens=0;
class Category extends StatefulWidget {
   Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Positioned(
      top: 105,
      left: 0,
      child: Container(
        height: size.height*0.90,
        width: size.width*0.18,
        decoration:const BoxDecoration(

            color: AppColors.white,
            border: Border.symmetric(

                vertical: BorderSide(
                    width: 0.2
                )
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const DefaultTextStyle(
                style:TextStyle(
                    color: AppColors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.w700
                ),
                child: Text(
                  AppTexts.products,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                        onPressed: (){
                          screens=0;
                        },
                        child: const Text(
                          AppTexts.allItems,
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 12,
                          ),

                        )
                    ),
                    TextButton(
                        onPressed: (){
                          screens=1;
                        },
                        child: const Text(
                          AppTexts.paints,
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 12,
                          ),

                        )
                    ),
                    TextButton(
                        onPressed: (){
                          screens=2;
                        },
                        child: const Text(
                          AppTexts.doorLock,
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 12,
                          ),

                        )
                    ),
                    TextButton(
                        onPressed: (){
                          screens=3;

                        },
                        child: const Text(
                          AppTexts.smartDoorLock,
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 12,
                          ),

                        )
                    ),
                    TextButton(
                        onPressed: (){
                          screens=4;
                        },
                        child: const Text(
                          AppTexts.sprayPaint,
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 12,
                          ),

                        )
                    ),
                    TextButton(
                        onPressed: (){
                          screens=5;
                        },
                        child: const Text(
                          AppTexts.accessories,
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 12,
                          ),

                        )
                    ),
                    TextButton(
                        onPressed: (){
                          screens=6;
                        },
                        child: const Text(
                          AppTexts.tools,
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 12,
                          ),

                        )
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
