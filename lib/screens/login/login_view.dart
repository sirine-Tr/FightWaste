import 'package:delivery_app/common/color_app.dart';
import 'package:delivery_app/common_widget/round_textField.dart';
import 'package:delivery_app/screens/login/forget_pwd_view.dart';
import 'package:delivery_app/screens/login/sign_up_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                "ADD your informations",
                style: TextStyle(
                  fontSize: 14,
                  color: Tcolor.secondaryText,
                  //fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 64,),
        RoundTextfield(hintText: "your email",controller: txtEmail,keyboardType: TextInputType.emailAddress,),
        SizedBox(height: 25,),
        RoundTextfield(hintText: "your password",controller: txtPWD,obscureText: true,),
        SizedBox(height: 125,),
         Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Tcolor.primary,
                  ),
                  padding: EdgeInsets.all(15),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                 SizedBox(height: 4,),
                 TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgetPWDView(),
                    ),
                  );
                 }, child: Text(
                "Forgot your password ?",
                style: TextStyle(
                  fontSize: 14,
                  color: Tcolor.secondaryText,
                  //fontWeight: FontWeight.bold
                ),
              ),),
              SizedBox(height: 20,),
              Text(
                "Or Login with",
                style: TextStyle(
                  fontSize: 14,
                  color: Tcolor.secondaryText,
                  //fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 4,),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 2, 76, 137),
                  ),
                  padding: EdgeInsets.all(15),
                  child: Center(
                    child: Text(
                      "Facebook",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                 SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.red,
                  ),
                  padding: EdgeInsets.all(15),
                  child: Center(
                    child: Text(
                      "Gmail",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 70,),
                Center(
                  child: TextButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpView(),
                    ),
                  );}, child: Row(
                    //mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                      "Don't have an account ? ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Tcolor.secondaryText,
                        //fontWeight: FontWeight.bold
                      ),
                              ),
                              Text(
                      "Sign up ",
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