import 'package:delivery_app/common/color_app.dart';
import 'package:flutter/material.dart';



class RestaurantRow extends StatelessWidget {
  final Map pObj;
  final VoidCallback onTap;
  const RestaurantRow({super.key, required this.pObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Image.asset(
                pObj["image"].toString(),
                width: double.maxFinite,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(
              width: 8,
            ),

             const SizedBox(
              height: 12,
            ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pObj["name"],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Tcolor.primaryText,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Image.asset(
                        "assets/img/rate.png",
                        width: 10,
                        height: 10,
                        fit: BoxFit.cover,
                      ),

                      const SizedBox(
                        width: 4,
                      ),

                      Text(
                        pObj["rate"],
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Tcolor.primary, fontSize: 11),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "(${pObj["rating"]} Ratings)",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Tcolor.secondaryText, fontSize: 11),
                      ),

                      const SizedBox(
                        width: 8,
                      ),

                        Text(
                          pObj["type"],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Tcolor.secondaryText, fontSize: 11),
                        ),
                        Text(
                          " . ",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Tcolor.primary, fontSize: 11),
                        ),
                        Text(
                          pObj["food_type"],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Tcolor.secondaryText, fontSize: 12),
                        ),
                      ],
                    ),
                    
                  ],
                ),
             ),
            
          ],
        ),
      ),
    );
  }
}
