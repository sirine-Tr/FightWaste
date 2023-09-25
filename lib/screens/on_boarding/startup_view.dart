import 'package:delivery_app/screens/login/welcome_view.dart';
import 'package:flutter/material.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goWelcomePage();
  }
  void goWelcomePage()async {
    await Future.delayed(const Duration(seconds: 1));
    welcomePage();
  }
  void welcomePage(){
Navigator.push(context, MaterialPageRoute(builder: (context)=> const WelcomeView()));
  }
  @override
  Widget build(BuildContext context) {
    //pour prendre le size de l ecrant
    var media = MediaQuery.of(context).size;
    return Scaffold(
      //Stack est utilisé pour empiler plusieurs widgets les uns sur les autres
      body:Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/img/splash_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/img/app_logo.png",
            width: media.width *0.7,
            height: media.height *0.7,
            fit: BoxFit.contain,
          )
        ],
        
      ),
    );
  }
}