import 'package:e_commerce_mobile_app/moduls/data.dart';
import 'package:flutter/material.dart';

class LogoScroller extends StatelessWidget {
  const LogoScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataBase.length,
        itemBuilder: (context, index) {
          final logoImage = dataBase[index];
          return Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(10),
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(60),
            ),
            child: Image.asset(logoImage["image-logo"]),
          );
        });
  }
}
