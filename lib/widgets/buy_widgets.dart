import 'package:flutter/material.dart';

class BuyWidgets extends StatefulWidget {
  const BuyWidgets({super.key});

  @override
  State<BuyWidgets> createState() => _BuyWidgetsState();
}

class _BuyWidgetsState extends State<BuyWidgets> {
  Widget getShoes(String img) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: 70,
      width: 70,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Image.asset(img, scale: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        getShoes('images/nike2.png'),
        getShoes('images/reebok2.png'),
        getShoes('images/reebok3.png'),
        getShoes('images/reebok4.png'),
        getShoes('images/reebok4.png'),
        getShoes('images/reebok4.png'),
      ]),
    );
  }
}
