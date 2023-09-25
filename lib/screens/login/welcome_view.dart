import 'package:delivery_app/screens/login/login_view.dart';
import 'package:delivery_app/screens/login/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/common/color_app.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  "assets/img/welcome_top_shape.png",
                  width: media.width,
                ),
                Image.asset(
                  "assets/img/app_logo.png",
                  width: media.width * 0.5,
                  height: media.width * 0.5,
                  fit: BoxFit.contain,
                ),
              ],
            ),
           
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Fight",
                    style: TextStyle(
                      color: Color(0xffFC6011),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: " Waste",
                    style: TextStyle(
                      color: Color(0xff4A4B4D),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: media.width * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
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
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpView(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border: Border.all(color: Tcolor.primary),
                  ),
                  padding: EdgeInsets.all(15),
                  child: Center(
                    child: Text(
                      "Create an Account",
                      style: TextStyle(
                        color: Tcolor.primary,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
