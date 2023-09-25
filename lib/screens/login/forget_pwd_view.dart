import 'package:delivery_app/common/color_app.dart';
import 'package:delivery_app/common_widget/round_textField.dart';
import 'package:delivery_app/screens/login/OTP_view.dart';
import 'package:delivery_app/screens/login/new_pwd_view.dart';
import 'package:delivery_app/screens/login/sign_up_view.dart';
import 'package:flutter/material.dart';

class ForgetPWDView extends StatefulWidget {
  const ForgetPWDView({super.key});

  @override
  State<ForgetPWDView> createState() => _ForgetPWDViewState();
}

class _ForgetPWDViewState extends State<ForgetPWDView> {
  TextEditingController txtEmail = TextEditingController();
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
                "login",
                style: TextStyle(
                  fontSize: 30,
                  color: Tcolor.primaryText,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "after sending your email you going to reseve a confirm code",
                style: TextStyle(
                  fontSize: 14,
                  color: Tcolor.secondaryText,
                  //fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 64,),
        RoundTextfield(hintText: "your email",controller: txtEmail,keyboardType: TextInputType.emailAddress,),
        
        SizedBox(height: 40,),
         GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const OTPView(),
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
        "Send",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    ),
  ),
)

            ],
          ),
        ),
      ),
    );


                 
  
  }
}