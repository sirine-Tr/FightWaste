import 'package:delivery_app/common/color_app.dart';
import 'package:delivery_app/common_widget/round_textField.dart';
import 'package:delivery_app/screens/login/forget_pwd_view.dart';
import 'package:delivery_app/screens/login/login_view.dart';
import 'package:delivery_app/screens/login/new_pwd_view.dart';
import 'package:delivery_app/screens/login/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
class OTPView extends StatefulWidget {
  const OTPView({super.key});

  @override
  State<OTPView> createState() => _OTPViewViewState();
}

class _OTPViewViewState extends State<OTPView> {
  
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
                "Code",
                style: TextStyle(
                  fontSize: 30,
                  color: Tcolor.primaryText,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "please enter the code that you reseve on ******95 to reseve the new password",
                style: TextStyle(
                  fontSize: 14,
                  color: Tcolor.secondaryText,
                  //fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20,),
        
        OtpTextField(
        numberOfFields: 5,
        borderColor: Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
            showDialog(
                context: context,
                builder: (context){
                return AlertDialog(
                    title: Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                );
                }
            );
        }, // end onSubmit
    ),
       SizedBox(height: 50,),  
         GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const NewPWDView(),
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
SizedBox(height: 70,),
                Center(
                  child: TextButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgetPWDView(),
                    ),
                  );}, child: Row(
                    //mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                      "Didn't resive it  ? ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Tcolor.secondaryText,
                        //fontWeight: FontWeight.bold
                      ),
                              ),
                              Text(
                      "click here ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Tcolor.primary,
                        //fontWeight: FontWeight.bold
                      ),
                              ),
                    ],
                  ),),
                ),

            ],
          ),
        ),
      ),
    );


                 
  
  }
}