import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:paint_tagline/core/utilis/app_colors.dart';
import 'package:paint_tagline/core/utilis/app_images.dart';
import 'package:paint_tagline/core/utilis/app_texts.dart';
import 'package:paint_tagline/features/accessories/data/lists/list_of_accessories.dart';
import 'package:paint_tagline/features/accessories/view/accessories.dart';
import 'package:paint_tagline/features/all_items/view/all_items.dart';
import 'package:paint_tagline/features/door_look/data/lists/list_of_doorlook.dart';
import 'package:paint_tagline/features/door_look/view/door_lock.dart';
import 'package:paint_tagline/features/home/view/widgets/category.dart';
import 'package:paint_tagline/features/home/view/widgets/chooser.dart';
import 'package:paint_tagline/features/home/view/widgets/custom_appbar.dart';
import 'package:paint_tagline/features/home/view/widgets/order_menu.dart';
import 'package:paint_tagline/features/paints/data/lists/list_of_paints.dart';
import 'package:paint_tagline/features/paints/view/paints.dart';
import 'package:paint_tagline/features/smart_door_lock/data/lists/list_of_smart_Look.dart';
import 'package:paint_tagline/features/smart_door_lock/view/smart_look.dart';
import 'package:paint_tagline/features/spray_paint/data/lists/list_of_spray_paint.dart';
import 'package:paint_tagline/features/spray_paint/view/spray_paint.dart';
import 'package:paint_tagline/features/tools/data/lists/list_of_tools.dart';
import 'package:paint_tagline/features/tools/view/tools.dart';

import '../../all_items/data/lists/list_of_allitems.dart';
import '../../all_items/data/models/product_model.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  cond(int index) {
    if (screens == 0) {
      return GestureDetector(
        onTap: () {

          showDialog(
              context: context, builder: (context) {
                return AlertDialog(
                  backgroundColor: AppColors.white,
                  content: Stack(
                      alignment: Alignment.topRight,
                      children: [
                         Container(
                      width:  450,
                      height: 200,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DefaultTextStyle(
                                      style: const TextStyle(
                                          color: AppColors.blue,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700),
                                      child: Text(
                                          allItems[index].productName)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 4
                                    ),
                                    child: DefaultTextStyle(
                                        style: TextStyle(
                                            color:
                                                AppColors.black.withOpacity(0.70),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11),
                                        child: Text(AppTexts.des)),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  DefaultTextStyle(
                                      style: const TextStyle(
                                          color: AppColors.orange,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                      child: Text(
                                          "${allItems[index].productPrice}.LE")),
                                  const SizedBox(
                                    height: 14
                                  ),
                                  Row(
                                    children: [
                                      const DefaultTextStyle(
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10),
                                          child: Text(AppTexts.buyCon)),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 60,
                                        height: 12,
                                        decoration: BoxDecoration(
                                            color: AppColors.orange,
                                            borderRadius: BorderRadius.circular(24)),
                                        child: DefaultTextStyle(
                                            style: TextStyle(
                                                color: AppColors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10),
                                            child: Text("Buy")),
                                      ),
                                      const DefaultTextStyle(
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10),
                                          child: Text(AppTexts.buyCond)),
                                    ],
                                  ),
                                  const DefaultTextStyle(
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10),
                                      child: Text(AppTexts.buyCondi)),
                                ],
                              ),
                              Spacer(),
                              Image.asset(allItems[index].productImage)
                            ],
                          ),
                         const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {

                              });
                                allItems[index].orderd = true;
                                Navigator.pop(context);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 130,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: AppColors.orange,
                                  borderRadius: BorderRadius.circular(24)),
                              child:const DefaultTextStyle(
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                  child: Text("Buy")),
                            ),
                          ),
                        ],
                      ),
                    ),
                          Positioned(
                      top: 5,
                      right: 2,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.close_outlined,
                            color: AppColors.white,
                            size: 7,
                          ),
                        ),
                      ),
                    ),
                  ]),
                );
              });
        },
        child: Container(
          padding: EdgeInsets.all(5),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                allItems[currentindex].productImage,
                width: 55,
                height: 55,
              ),
              Text(
                allItems[currentindex].productName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.blue,
                  fontSize: 14,
                ),
              ),
              Text(
                "${allItems[currentindex].productPrice} .LE",
                style: TextStyle(
                    color: AppColors.black.withOpacity(0.70), fontSize: 10),
              )
            ],
          ),
        ),
      );
    } else if (screens == 1) {
      return Paints(
        index: currentindex,
      );
    } else if (screens == 2) {
      return DoorLock(
        index: currentindex,
      );
    } else if (screens == 3) {
      return SmartLook(
        index: currentindex,
      );
    } else if (screens == 4) {
      return SprayPaint(
        index: currentindex,
      );
    } else if (screens == 5) {
      return Accessories(
        index: currentindex,
      );
    } else {
      return Tools(
        index: currentindex,
      );
    }
  }
  int length0fList() {
    if (screens == 0) {
      return allItems.length;
    } else if (screens == 1) {
      return paints.length;
    } else if (screens == 2) {
      return doorLook.length;
    } else if (screens == 3) {
      return smartLook.length;
    } else if (screens == 4) {
      return sprayPaint.length;
    } else if (screens == 5) {
      return accessories.length;
    } else if (screens == 6) {
      return tools.length;
    } else {
      return allItems.length;
    }
  }
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
        alignment: Alignment.topRight,
        children: [
         Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 2,
              toolbarHeight: 87,
              title: CustomAppBarr()),
          body: Row(
            children: [
              SizedBox(width: size.width * 0.18),
              SizedBox(
                  width: size.width * 0.55,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: AppColors.background,
                    child: GridView.builder(
                        itemCount: length0fList(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5,
                                mainAxisSpacing: 16,
                                crossAxisSpacing: 16),
                        itemBuilder: (context, index) {
                          currentindex = index;
                          return cond(index);
                        }),
                  ))
            ],
          )),
      Positioned(
        top: 105,
        left: 0,
        child: Container(
          height: size.height * 0.90,
          width: size.width * 0.18,
          decoration: const BoxDecoration(
              color: AppColors.white,
              border: Border.symmetric(vertical: BorderSide(width: 0.2))),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DefaultTextStyle(
                  style: TextStyle(
                      color: AppColors.blue,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
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
                          onPressed: () {
                            screens = 0;
                            setState(() {});
                          },
                          child: const Text(
                            AppTexts.allItems,
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 12,
                            ),
                          )),
                      TextButton(
                          onPressed: () {
                            screens = 1;
                            setState(() {});
                          },
                          child: const Text(
                            AppTexts.paints,
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 12,
                            ),
                          )),
                      TextButton(
                          onPressed: () {
                            screens = 2;
                            setState(() {});
                          },
                          child: const Text(
                            AppTexts.doorLock,
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 12,
                            ),
                          )),
                      TextButton(
                          onPressed: () {
                            screens = 3;
                            setState(() {});
                          },
                          child: const Text(
                            AppTexts.smartDoorLock,
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 12,
                            ),
                          )),
                      TextButton(
                          onPressed: () {
                            setState(() {});
                            screens = 4;
                          },
                          child: const Text(
                            AppTexts.sprayPaint,
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 12,
                            ),
                          )),
                      TextButton(
                          onPressed: () {
                            setState(() {});
                            screens = 5;
                          },
                          child: const Text(
                            AppTexts.accessories,
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 12,
                            ),
                          )),
                      TextButton(
                          onPressed: () {
                            setState(() {});
                            screens = 6;
                          },
                          child: const Text(
                            AppTexts.tools,
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 12,
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      OrderMenu(
        index: currentindex,
      ),
    ]);
  }
}
