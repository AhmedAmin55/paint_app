import 'package:flutter/cupertino.dart';
import 'package:paint_tagline/core/utilis/app_colors.dart';

class Chooser extends StatelessWidget {
   Chooser({super.key});
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Container(
      width:size.width*0.18 ,
      decoration: BoxDecoration(
        color: AppColors.chooser
      ),
    );
  }
}
