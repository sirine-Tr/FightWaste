import 'package:delivery_app/common/color_app.dart';
import 'package:delivery_app/screens/panier/panier_view.dart';
import 'package:delivery_app/screens/payement/add_card_view.dart';
import 'package:flutter/material.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({Key? key}) : super(key: key);

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
  List<Map<String, dynamic>> cardArr = [
    {"icon": "assets/img/visa_icon.png", "card": "**** **** **** 2187"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        "Payment Details",
                        style: TextStyle(
                            color: Tcolor.primaryText,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PanierView()));
                      },
                      icon: Image.asset(
                        "assets/img/shopping_cart.png",
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Text(
                  "Customize your payment method",
                  style: TextStyle(
                      color: Tcolor.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Divider(
                  color: Tcolor.secondaryText.withOpacity(0.4),
                  height: 1,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Tcolor.textfield,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 15,
                          offset: Offset(0, 9))
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cash/Card On Delivery",
                            style: TextStyle(
                                color: Tcolor.primaryText,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                          Image.asset(
                            "assets/img/check.png",
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Divider(
                        color: Tcolor.secondaryText.withOpacity(0.4),
                        height: 1,
                      ),
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: cardArr.length,
                      itemBuilder: ((context, index) {
                        var cObj = cardArr[index];
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 35),
                          child: Row(
                            children: [
                              Image.asset(
                                cObj["icon"].toString(),
                                width: 50,
                                height: 35,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Text(
                                  cObj["card"].toString(),
                                  style: TextStyle(
                                      color: Tcolor.secondaryText,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 25),
                                child: GestureDetector(
                                  onTap: () {
                                    /*Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PaiementView(),
                                      ),
                                    );*/
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Tcolor.primary,
                                    ),
                                    padding: EdgeInsets.all(15),
                                    
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Divider(
                        color: Tcolor.secondaryText.withOpacity(0.4),
                        height: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Other Methods",
                            style: TextStyle(
                                color: Tcolor.primaryText,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: RoundIconButton(
                    title: "Add Another Credit/Debit Card",
                    icon: "assets/img/add.png",
                    color: Tcolor.primary,
                    fontSize: 16,
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return const AddCardView();
                        },
                      );
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const AddCardView() ));
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final String title;
  final String icon;
  final Color color;
  final double fontSize;
  final VoidCallback onPressed;

  const RoundIconButton({
    required this.title,
    required this.icon,
    required this.color,
    required this.fontSize,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color,
        ),
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 20,
              height: 20,
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
