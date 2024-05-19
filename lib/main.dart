import 'package:flutter/material.dart';
import 'package:paint_tagline/core/utilis/app_fonts.dart';
import 'package:paint_tagline/core/utilis/app_texts.dart';
import 'package:paint_tagline/features/home/view/home.dart';

main(){
  runApp(PaintTagline());
}

class PaintTagline extends StatelessWidget {
  const PaintTagline({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: AppFonts.hahmlet
      ),
      debugShowCheckedModeBanner: false,
      title: AppTexts.titleApp,
      home: Home(),
    );
  }
}
