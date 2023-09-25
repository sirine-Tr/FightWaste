import 'package:delivery_app/common/color_app.dart';
import 'package:delivery_app/common_widget/round_textField.dart';
import 'package:delivery_app/screens/login/OTP_view.dart';
import 'package:delivery_app/screens/login/login_view.dart';
import 'package:delivery_app/screens/login/sign_up_view.dart';
import 'package:flutter/material.dart';

class NewPWDView extends StatefulWidget {
  const NewPWDView({super.key});

  @override
  State<NewPWDView> createState() => _NewPWDViewState();
}

class _NewPWDViewState extends State<NewPWDView> {
  TextEditingController txtConfirmPWD = TextEditingController();
  TextEditingController txtPWD = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body:SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 64,),
              Text(
                "New password",
                style: TextStyle(
                  fontSize: 30,
                  color: Tcolor.primaryText,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "write your new password",
                style: TextStyle(
                  fontSize: 14,
                  color: Tcolor.secondaryText,
                  //fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 64,),
        RoundTextfield(hintText: "your password",controller: txtPWD,keyboardType: TextInputType.emailAddress,),
         SizedBox(height: 20,),
         RoundTextfield(hintText: "your confirm password",controller: txtConfirmPWD,keyboardType: TextInputType.emailAddress,),
        SizedBox(height: 40,),
         GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginView(),
      ),
    );
  },
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: Tcolor.primary,
    ),
    padding: EdgeInsets.all(15),
    child: Center(
      child: Text(
        "Next",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    ),
  ),
),
            ],
          ),
        ),
      ),
    );


                 
  
  }
}