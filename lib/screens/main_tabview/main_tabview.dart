import 'package:delivery_app/common/color_app.dart';
import 'package:delivery_app/common_widget/tab_button.dart';
import 'package:delivery_app/screens/home/home_view.dart';
import 'package:delivery_app/screens/menu/menu_view.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab =2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = HomeView(); // No const keyword and no arguments if it's a default constructor.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: storageBucket,child: selectPageView,),
      backgroundColor: Color.fromARGB(255, 216, 216, 216),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(onPressed: () {
              if (selectTab != 2) {
                selectTab = 2;
                selectPageView =  HomeView();
              }
              if (mounted) {
                setState(() {});
              }
            },
            shape: const CircleBorder(),
        backgroundColor: selectTab == 2 ? Tcolor.primary : Tcolor.placeholder,
        child: Container(
          child: Image.asset("assets/img/tab_home.png",
          
          width:30,
          height: 30,
        
          ),
        ),
        
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.black,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        surfaceTintColor: Colors.white,
        elevation: 1,
        notchMargin: 12,
        height: 64,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TabButton(isSelected: selectTab ==0,
           onTap: (){
            if(selectTab !=0){
              selectTab = 0;
              selectPageView = MenuView();
            }
            if(mounted){
              setState(() {
                
              });
            }
           },
           title: "menu", 
           icon: "assets/img/tab_menu.png"
           ),
          TabButton(isSelected: selectTab ==1,
           onTap: (){
            if(selectTab !=1){
              selectTab = 1;
              selectPageView = Container();
            }
            if(mounted){
              setState(() {
                
              });
            }
           },
           title: "panier", 
           icon: "assets/img/tab_offer.png"
           ),

        ],
      )),

    );
  }
}