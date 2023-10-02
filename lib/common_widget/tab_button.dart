import 'package:delivery_app/common/color_app.dart';
import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String icon;
  final bool isSelected;
  const TabButton({super.key, required this.isSelected, required this.onTap, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
              icon,
              width: 20,height: 20,
              color:isSelected ? Tcolor.primary: Tcolor.placeholder,
              ),
              SizedBox(height: 4,),
              Text(title,
              style: TextStyle(
              color:isSelected ? Tcolor.primary: Tcolor.placeholder,
              fontSize: 12,fontWeight: FontWeight.w500),
              )
            ],),
          );
  }
}