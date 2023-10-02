import 'package:delivery_app/common/color_app.dart';
import 'package:delivery_app/common_widget/round_textField.dart';
import 'package:flutter/material.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  TextEditingController txtSearch =TextEditingController();
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
            ), ],),),),);
  }
}