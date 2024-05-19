

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:paint_tagline/features/all_items/data/lists/list_of_allitems.dart';
import 'package:paint_tagline/features/all_items/data/models/product_model.dart';
import 'package:paint_tagline/features/home/view/home.dart';

import '../../../../core/utilis/app_colors.dart';
import '../../../../core/utilis/app_images.dart';
import '../../../../core/utilis/app_texts.dart';

class OrderMenu extends StatefulWidget {
  const OrderMenu({super.key,required this.index,});
  final index ;

  @override
  State<OrderMenu> createState() => _OrderMenuState();
}

class _OrderMenuState extends State<OrderMenu> {
  double price=0;

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    List<ProductModel> orderdItems = allItems.where((element) => element.orderd==true).toList();
 price=0;
 for(int i=0 ;i<orderdItems.length;i++){
   price+=orderdItems[i].productPrice*orderdItems[i].counter;
   print("price: $price  productPrice: ${orderdItems[i].productPrice}  counter: ${orderdItems[i].counter}");
 }
    return Container(
      width: size.width*0.27,
      decoration: BoxDecoration(
          color: AppColors.white
      ),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(right:5 ,left:10 ,top:10 ,bottom:10 ),
              child: Row(
                  children: [
                    Image.asset(
                      AppImages.cart,
                      width: size.width*0.03,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height*0.02,
                          ),
                          DefaultTextStyle(
                            style: TextStyle(
                                fontSize: size.width*0.02,
                                color: AppColors.blue,
                                fontWeight: FontWeight.w700
                            ),
                            child: Text(
                                AppTexts.orderMenu,
                            ),
                          ),
                          DefaultTextStyle(
                            style: TextStyle(
                                fontSize: size.width*0.01,
                                color: AppColors.gray,
                                fontWeight: FontWeight.w400
                            ),
                            child: Text(
                              AppTexts.orderNum,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(AppImages.edit,width: 20,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: 20,))
                  ])
          ),
          Divider(),
          SizedBox(
              height: size.height*0.65,
               child:ListView.builder(
                    itemCount: orderdItems.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children:[
                                    Container(
                                      width: double.infinity,
                                      height:size.height*0.13,
                                      decoration: BoxDecoration(
                                          color: AppColors.orange,
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                    ),
                                    Container(
                                      width: size.width*0.21,
                                      height:size.height*0.13,
                                      decoration:  BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15)
                                          ),
                                          border: Border.all(
                                              color: AppColors.orange
                                          )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 11),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              orderdItems[index].productImage,
                                              width: 60,
                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                DefaultTextStyle(
                                                  style: TextStyle(
                                                      color: AppColors.blue,
                                                      fontSize: size.width*0.010,
                                                      fontWeight: FontWeight.w900
                                                  ),
                                                  child: Text(
                                                     orderdItems[index].productName,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                DefaultTextStyle(
                                                  style: TextStyle(
                                                      color: AppColors.black.withOpacity(0.70),
                                                      fontSize: 12
                                                  ),
                                                  child: Text(
                                                    "${orderdItems[index].productPrice} .LE",

                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            GestureDetector(
                                              onTap: (){
                                                if(orderdItems[index].counter>0){
                                                  orderdItems[index].counter= orderdItems[index].counter-1;
                                                }

                                                setState(() {
                                                });
                                              },
                                              child: Container(
                                                width: size.width*0.02,
                                                height:size.height*0.03,
                                                decoration: const BoxDecoration(
                                                  color: AppColors.orange,
                                                  borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(5),
                                                      bottomLeft: Radius.circular(5)
                                                  ),
                                                ),
                                                child:Icon(Icons.remove,color: AppColors.white,size: 15,) ,
                                              ),
                                            ),
                                            SizedBox(
                                              width: size.width*0.02,
                                              child:DefaultTextStyle(
                                                style: TextStyle(
                                                  color: AppColors.black.withOpacity(0.70),
                                                ),
                                                child: Text(
                                                    "${orderdItems[index].counter}",
                                                    textAlign: TextAlign.center,

                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: (){
                                                orderdItems[index].counter=   orderdItems[index].counter+1;
                                                setState(() {
                                                });
                                              },
                                              child: Container(
                                                width: size.width*0.02,
                                                height:size.height*0.03,
                                                decoration: const BoxDecoration(
                                                  color: AppColors.orange,
                                                  borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(5),
                                                      bottomRight: Radius.circular(5)
                                                  ),

                                                ),
                                                child:Icon(Icons.add,color: AppColors.white,size: 15,) ,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            IconButton(
                                onPressed: (){
                                  setState(() {
                                    orderdItems[index].orderd=false;
                                  });
                                },
                                icon: Icon(Icons.delete_outline,color: AppColors.orange,size: 15,)
                            ),

                          ],
                        ),
                      );
                    } )
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
          Container(
            height: size.height*0.10,
            width: size.width*0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: AppColors.orange
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16
              ),
              child: Row(
                children: [
                    Column(
                    children: [
                      DefaultTextStyle(
                       style: const TextStyle(
                       color: AppColors.chooser,
                       fontSize: 14
                         ),
                        child: Text(
                          "${orderdItems.length} ${AppTexts.items}",
                        ),
                      ),
                      DefaultTextStyle(
                        style: TextStyle(
                          color: AppColors.white
                        ),
                        child: Text(
                            "${price}.LE",

                          ),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (){},
                    child: Image.asset(
                      AppImages.save,
                      width: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {

                        });

                        showDialog(
                            context: context, builder: (context) {
                          return  AlertDialog(
                            content: Container(
                              width: size.width*0.25,
                              height: size.height*0.25,
                              child: Column(
                                children: [
                                  DefaultTextStyle(
                                      style: TextStyle(
                                        color: AppColors.blue,
                                        fontSize: 20
                                      ),
                                      child: Text(
                                        "Do you want to complete the order?"
                                      )
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      showDialog(
                                          context: context,
                                          builder: (context){
                                            return AlertDialog(
                                              backgroundColor: AppColors.white,
                                              content: Container(
                                                padding: EdgeInsets.symmetric(horizontal: 100),
                                                width: size.width*0.30,
                                                height: size.height*0.35,
                                                child: Column(
                                                  children: [
                                                    Image.asset(AppImages.ordered,width: 35,),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    DefaultTextStyle(
                                                      style:TextStyle(
                                                          color:AppColors.blue ,
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.w700
                                                      ),
                                                      child: Text(
                                                        AppTexts.yourReceipt,

                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 14,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                        DefaultTextStyle(
                                                          style:TextStyle(
                                                              color: AppColors.black.withOpacity(0.70),
                                                              fontSize: 10
                                                          ),
                                                          child: Text(
                                                            "Order",
                                                          ),
                                                        ),
                                                        DefaultTextStyle(
                                                          style:TextStyle(
                                                            color:AppColors.black.withOpacity(0.70) ,
                                                            fontSize: 10,

                                                          ),
                                                          child: Text(
                                                            "#16",

                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Divider(
                                                      color: AppColors.black.withOpacity(0.70),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                      15,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            DefaultTextStyle(
                                                              style:TextStyle(
                                                                  color: AppColors.black.withOpacity(0.70),
                                                                  fontSize: 10
                                                              ),
                                                              child: Text(
                                                                "Total",
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            DefaultTextStyle(
                                                              style:TextStyle(
                                                                color:AppColors.black.withOpacity(0.70) ,
                                                                fontSize: 10,

                                                              ),
                                                              child: Text(
                                                                "L.E",

                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 8,
                                                        ),
                                                        Row(
                                                          children: [
                                                            DefaultTextStyle(
                                                              style:TextStyle(
                                                                  color: AppColors.black.withOpacity(0.70),
                                                                  fontSize: 10
                                                              ),
                                                              child: Text(
                                                                "Fees",
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            DefaultTextStyle(
                                                              style:TextStyle(
                                                                color:AppColors.black.withOpacity(0.70) ,
                                                                fontSize: 10,

                                                              ),
                                                              child: Text(
                                                                "12 L.E",

                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 8,
                                                        ),
                                                        Row(
                                                          children: [
                                                            DefaultTextStyle(
                                                              style:TextStyle(
                                                                  color: AppColors.black.withOpacity(0.70),
                                                                  fontSize: 10
                                                              ),
                                                              child: Text(
                                                                "Delivery",
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            DefaultTextStyle(
                                                              style:TextStyle(
                                                                color:AppColors.black.withOpacity(0.70) ,
                                                                fontSize: 10,

                                                              ),
                                                              child: Text(
                                                                "0 L.E",

                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height:
                                                      20,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        GestureDetector(
                                                            onTap: (){
                                                              setState(() {

                                                              });

                                                            },
                                                            child: Image.asset(AppImages.homeReceit,width: 90,)),
                                                        SizedBox(
                                                          width: 15,
                                                        ),
                                                        GestureDetector(
                                                            onTap: (){},
                                                            child: Image.asset(AppImages.saveReceit,width: 30,)),
                                                      ],
                                                    )
                                                  ],),
                                              ),
                                            );
                                          }
                                      );
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 110,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          color: AppColors.orange,
                                          borderRadius: BorderRadius.circular(24)
                                      ),
                                      child:Text(
                                          "Yes"
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 110,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          color: AppColors.orange,
                                          borderRadius: BorderRadius.circular(24)
                                      ),
                                      child:Text(
                                          "No"
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: size.width*0.07,
                        height: size.height*0.05,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child:DefaultTextStyle(
                          style:TextStyle(
                              color:AppColors.orange ,
                              fontSize: 15,
                              fontWeight: FontWeight.w700
                          ),
                          child: Text(
                            AppTexts.order,

                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],),
    );

  }
}
