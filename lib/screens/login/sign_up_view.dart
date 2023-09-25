import 'package:delivery_app/common/color_app.dart';
import 'package:delivery_app/common_widget/round_textField.dart';
import 'package:delivery_app/screens/login/login_view.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPWD = TextEditingController();
  TextEditingController txtConfirmPWD = TextEditingController();
  TextEditingController txtName = TextEditingController();
  TextEditingController txtTel = TextEditingController();
    TextEditingController txtAdr = TextEditingController();
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
                "Sign UP",
                style: TextStyle(
                  fontSize: 30,
                  color: Tcolor.primaryText,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "ADD your details to sign up",
                style: TextStyle(
                  fontSize: 14,
                  color: Tcolor.secondaryText,
                  //fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 64,),
              RoundTextfield(hintText: "your Name",controller: txtName),
        SizedBox(height: 25,),
        RoundTextfield(hintText: "your email",controller: txtEmail,keyboardType: TextInputType.emailAddress,),
        SizedBox(height: 25,),
        RoundTextfield(hintText: "your Adress",controller: txtAdr),
        SizedBox(height: 25,),
        RoundTextfield(hintText: "Phone Number",controller: txtTel, keyboardType: TextInputType.phone,),
        SizedBox(height: 25,),
        RoundTextfield(hintText: "your password",controller: txtPWD,obscureText: true,),
        SizedBox(height: 25,),
        RoundTextfield(hintText: "Confirm password",controller: txtConfirmPWD,obscureText: true,),
        SizedBox(height: 125,),
         Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Tcolor.primary,
                  ),
                  padding: EdgeInsets.all(15),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                
              
              
                SizedBox(height: 70,),
                Center(
                  child: TextButton(onPressed: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                  );
                  }, child: Row(
                    //mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                      "have you an account ? ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Tcolor.secondaryText,
                        //fontWeight: FontWeight.bold
                      ),
                              ),
                              Text(
                      "Login ",
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
        )
      )
    );
  }
}