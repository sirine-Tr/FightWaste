import 'package:delivery_app/common/color_app.dart';
import 'package:delivery_app/screens/payement/paiement_view.dart';
import 'package:flutter/material.dart';

class PanierView extends StatefulWidget {
  const PanierView({Key? key}) : super(key: key);

  @override
  State<PanierView> createState() => _PanierViewState();
}

class _PanierViewState extends State<PanierView> {
  List<Map<String, dynamic>> itemArr = [
    {"name": "Beef Burger", "qty": 1, "price": 16.0},
    {"name": "Classic Burger", "qty": 1, "price": 14.0},
  ];

  double calculateSubTotal() {
    double subTotal = 0.0;
    for (var item in itemArr) {
      subTotal += item["price"] * item["qty"];
    }
    return subTotal;
  }

  double calculateTotal() {
    double subTotal = calculateSubTotal();
    return subTotal + 2.0; // Add 2 for delivery cost
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset(
                        "assets/img/btn_back.png",
                        width: 20,
                        height: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        "My Order",
                        style: TextStyle(
                            color: Tcolor.primaryText,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),
             
              const SizedBox(
                height: 20,
              ),
              Container(
  decoration: BoxDecoration(color: Tcolor.textfield),
  child: ListView.separated(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    padding: EdgeInsets.zero,
    itemCount: itemArr.length,
    separatorBuilder: ((context, index) => Divider(
      indent: 25,
      endIndent: 25,
      color: Colors.white,
      height: 1,
    )),
    itemBuilder: ((context, index) {
      var cObj = itemArr[index];
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        //backgroundColor:Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "assets/img/shop_logo.png",
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${cObj["name"].toString()} x${cObj["qty"].toString()}",
                    style: TextStyle(
                        color: Tcolor.primaryText,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "\$${cObj["price"].toString()}",
                        style: TextStyle(
                            color: Tcolor.primaryText,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      ),
                      
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                          "delivery in 30 min",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Tcolor.primary,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                ],
              ),
            ),
          ],
        ),
      );
    }),
  ),
),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                      ],
                    ),
                    Divider(
                      color: Tcolor.secondaryText.withOpacity(0.5),
                      height: 1,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sub Total",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Tcolor.primaryText,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "\$${calculateSubTotal().toStringAsFixed(2)}",
                          style: TextStyle(
                              color: Tcolor.primary,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Cost",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Tcolor.primaryText,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "\$2",
                          style: TextStyle(
                              color: Tcolor.primary,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Divider(
                      color: Tcolor.secondaryText.withOpacity(0.5),
                      height: 1,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Tcolor.primaryText,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "\$${calculateTotal().toStringAsFixed(2)}",
                          style: TextStyle(
                              color: Tcolor.primary,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentDetailsView(),
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
                              "Confirmer",
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
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: GestureDetector(
                        onTap: () {
                          // Handle cancellation logic here
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Tcolor.primary),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(15),
                          child: Center(
                            child: Text(
                              "Annuler",
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
            ],
          ),
        ),
      ),
    );
  }
}
