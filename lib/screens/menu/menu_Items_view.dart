import 'package:delivery_app/common/color_app.dart';
import 'package:delivery_app/common_widget/menu_items_row.dart';
import 'package:delivery_app/common_widget/restaurant_list.dart';
import 'package:delivery_app/common_widget/round_textField.dart';
import 'package:delivery_app/screens/menu/item_Dettails_view.dart';
import 'package:flutter/material.dart';

class MenuItemsView extends StatefulWidget {
  final Map mOBJ;
  const MenuItemsView({super.key, required this.mOBJ});

  @override
  State<MenuItemsView> createState() => _MenuItemsViewState();
}

class _MenuItemsViewState extends State<MenuItemsView> {
  TextEditingController txtSearch = TextEditingController();
  

  List menuItemsArr = [
    {
      "image": "assets/img/dess_1.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "DESERTS"
    },
    {
      "image": "assets/img/dess_2.png",
      "name": "Chocolate cake",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "DESERTS"
    },
    {
      "image": "assets/img/dess_3.png",
      "name": "Milk shake",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "DESERTS"
    },
    {
      "image": "assets/img/dess_4.png",
      "name": "Brownies",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "DESERTS"
    },
    {
      "image": "assets/img/dess_1.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "DESERTS"
    },
    {
      "image": "assets/img/dess_2.png",
      "name": "Chocolate cake",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "DESERTS"
    },
    {
      "image": "assets/img/dess_3.png",
      "name": "Milk shake",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "DESERTS"
    },
    {
      "image": "assets/img/dess_4.png",
      "name": "Brownies",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "DESERTS"
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
                  IconButton(onPressed:(){
                    Navigator.of(context).pop();
                    },
                    icon: Image.asset("assets/img/btn_back.png",width: 20,height: 20,)),
                  SizedBox(width: 8,),
                  Text(widget.mOBJ["name"], style: TextStyle(fontSize:20,color: Tcolor.primaryText,fontWeight: FontWeight.w800),)
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
            
            SizedBox(height: 10,),
            
             ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: menuItemsArr.length,
                itemBuilder: ((context, index) {
                  var mObj = menuItemsArr[index] as Map? ?? {};
                  return MenuRow(
                    mObj: mObj,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ItemDetailsView()),
                      );
                    },
                  );
                }),
              ),
          ],
        ),
        ),
      )
    );
  }
}