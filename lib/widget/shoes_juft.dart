import 'package:e_commerce_mobile_app/moduls/data.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class ShoesTwo extends StatelessWidget {
  const ShoesTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataBase.length,
        itemBuilder: (context, index) {
          final juftShoes = dataBase[index];
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(juftShoes["image-juft"]),
          );
        });
  }
}
