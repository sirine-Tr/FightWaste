import 'package:delivery_app/common/color_app.dart';
import 'package:delivery_app/common_widget/restaurant_list.dart';
import 'package:delivery_app/common_widget/round_textField.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();
  List catArr = [
    {"image": "assets/img/cat_offer.png", "name": "Berger"},
    {"image": "assets/img/cat_sri.png", "name": "Dish"},
    {"image": "assets/img/cat_3.png", "name": "Pasta"},
    {"image": "assets/img/cat_4.png", "name": "salad"},
  ];

  List popArr = [
    {
      "image": "assets/img/res_1.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/img/res_2.png",
      "name": "Café de Noir",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/img/res_3.png",
      "name": "Bakes by Tella",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
  ];

  List mostPopArr = [
    {
      "image": "assets/img/m_res_1.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/img/m_res_2.png",
      "name": "Café de Noir",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(padding:EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            SizedBox(height: 64,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hi SIRINE", style: TextStyle(fontSize:20,color: Tcolor.primaryText,fontWeight: FontWeight.w800),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: RoundTextfield(hintText:"Search" ,controller: txtSearch,
            left: Container(
              alignment: Alignment.center,
              child: Image.asset("assets/img/search.png",
              width: 20,
              height: 20,
              ),
            ),
            ),
            ),
            SizedBox(height: 30,),
            SizedBox(height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 15),
              itemCount: catArr.length,
              itemBuilder: ((context,index){
                var cOBJ = catArr[index] as Map? ?? {};
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      ClipRRect(

     borderRadius: BorderRadius.circular(300.0),
     child: Image.asset(cOBJ["image"].toString(),
     width: 85,
     height: 85,
     fit: BoxFit.cover,
     ),
                      ),
                      SizedBox(height: 8,),
                      Text(cOBJ["name"],
                       style: TextStyle(
                        fontSize:18,
                        color: Tcolor.secondaryText,
                        fontWeight: FontWeight.w800),)
                    ],
                  ),

                );

            })),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20),
              child: Text("List of restaurants",style: TextStyle(color: Tcolor.primaryText,fontSize: 20,fontWeight: FontWeight.w800),),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 15),
              itemCount: popArr.length,
              itemBuilder: ((context,index){
                var pOBJ = popArr[index] as Map? ?? {};
                return RestaurantRow(pObj: pOBJ,
                onTap: () {
                  
                },
                );
              }
            ),
            )
          ],
        ),
        ),
      )
    );
  }
}