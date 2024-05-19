import 'package:flutter/material.dart';

import '../../../../core/utilis/app_colors.dart';
import '../../../../core/utilis/app_images.dart';
import '../../../../core/utilis/app_texts.dart';

class CustomAppBarr extends StatelessWidget {
  const CustomAppBarr();
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Row(
      children: [
        Image.asset(
          AppImages.logo,
          width: size.width*0.2,
          height: size.height*0.2,

        ),
        SizedBox(
            width: size.width*0.25
        ),
        SizedBox(
          width: size.width*0.25,
          height: size.height*0.08,
          child: TextFormField(
            cursorColor: AppColors.black,
            decoration: InputDecoration(
              prefixIcon: Container(
                width: 10,
                height: 10,
                padding: EdgeInsets.all(10),
                child: Image.asset(AppImages.searchIcons,
                  width: 15),
              ),
              hintText: AppTexts.search,
              hintStyle: TextStyle(
                  fontSize: 12
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.chooser),
                  borderRadius: BorderRadius.circular(24)
              ),
              focusColor: AppColors.chooser,

            ),

          ),
        )
      ],
    );
  }
}
