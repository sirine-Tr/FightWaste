import 'package:delivery_app/common/color_app.dart';
import 'package:delivery_app/screens/login/login_view.dart';
import 'package:delivery_app/screens/main_tabview/main_tabview.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectedPage = 0;
  PageController controller = PageController();
  List pageArr =[
    {"title":"Find your affordable food",
    "suptitle":"discover the best dishes from 1000 budget-friendly restaurants",
     "image":"assets/img/on_boarding_1.png"
    },
        {"title":"Fast delivery",
    "suptitle":"quick restaurant food delivery to your home, office, or wherever you are",
     "image":"assets/img/on_boarding_2.png"
    },
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {
        selectedPage=controller.page?.floor() ?? 0;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pageArr.length,
            itemBuilder: ((context, index) {
              var pObj = pageArr[index] as Map? ?? {};
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: media.width,
                    height: media.width,
                    alignment: Alignment.center,
                    child: Image.asset(
                      pObj["image"].toString(),
                      width: media.width * 0.65,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.2,
                  ),
                  Text(
                    pObj["title"].toString(),
                    style: TextStyle(
                        color: Tcolor.primaryText,
                        fontSize: 28,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  Text(
                    pObj["suptitle"].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Tcolor.secondaryText,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: media.width * 0.20,
                  ),
                ],
              );
            }),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: media.height * 0.6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pageArr.map((e) {
                  var index = pageArr.indexOf(e);

                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                        color: index == selectedPage
                            ? Tcolor.primary
                            : Tcolor.placeholder,
                        borderRadius: BorderRadius.circular(4)),
                  );
                }).toList(),
              ),
              SizedBox(
                height: media.height * 0.28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: selectedPage >= 1
    ? GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MainTabView(),
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
      )
    : GestureDetector(
        onTap: () {
          setState(() {
            selectedPage = selectedPage + 1;
            controller.animateToPage(selectedPage,
                duration: const Duration(milliseconds: 500),
                curve: Curves.bounceInOut);
          });
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

                    
              ),
            ],
          )
        ],
      ),
    );
  }
}