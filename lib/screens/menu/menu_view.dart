import 'package:delivery_app/common/color_app.dart';
import 'package:delivery_app/common_widget/round_textField.dart';
import 'package:delivery_app/screens/menu/menu_Items_view.dart';
import 'package:flutter/material.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  
  TextEditingController txtSearch =TextEditingController();
  List menuArr = [
    {
      "name": "Restaurants",
      "image": "assets/img/menu_1.png",
      "items_count": "120",
    },
    {
      "name": "Pastry",
      "image": "assets/img/menu_3.png",
      "items_count": "155",
    },
    {
      "name": "supermarket",
      "image": "assets/img/menu_4.png",
      "items_count": "25",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
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
                  Text("Menu", style: TextStyle(fontSize:20,color: Tcolor.primaryText,fontWeight: FontWeight.w800),)
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
            SizedBox(height: 50,),
            ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
              physics: NeverScrollableScrollPhysics(),
              itemCount: menuArr.length,
              shrinkWrap: true,
              itemBuilder: ((context,index){
                var mOBJ = menuArr[index] as Map? ??{};
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MenuItemsView(mOBJ: mOBJ),),);
                  },
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10,bottom: 10,right: 20),
                        width: media.width - 100,
                                  height: 120,
                        decoration: BoxDecoration(color: Tcolor.primary,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                            BoxShadow(
                                 color: Colors.black12,
                                 blurRadius: 7,
                                 offset: Offset(0, 4))
                                      ],),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        Image.asset(mOBJ["image"].toString(),width: 80,height: 80,fit: BoxFit.contain,),
                        SizedBox(width: 25,),
                        Expanded(child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                         
                           Text(mOBJ["name"].toString(), style: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.w800),)
                          
                        ],)),
                          Container(
                        
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                            BoxShadow(
                                 color: Colors.black12,
                                 blurRadius: 4,
                                 offset: Offset(0, 2))
                                      ],),
                                      alignment: Alignment.center,
                                      child: Image.asset("assets/img/btn_next.png",width: 20,height: 20,),
                                      ),
                
                      ],)
                    ],
                  ),
                );

            }))
             ],
             ),
             ),),);
  }
}