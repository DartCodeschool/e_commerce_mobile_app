import 'package:flutter/material.dart';

class ShoesTwo extends StatefulWidget {
  const ShoesTwo({super.key});

  @override
  State<ShoesTwo> createState() => _ShoesTwoState();
}

class _ShoesTwoState extends State<ShoesTwo> {
  String images = 'assets/juft/1.png';
  int current = 0;
  Widget juftShoes(String photo, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          current = index;
          images = photo;
        });
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          border: Border.all(color: current == index ? Colors.green : Colors.blue.shade50, width: 2),
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(photo),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
          ),
          child: Image.asset(
            images,
            height: 400,
            width: 400,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              juftShoes('assets/juft/1.png', 0),
              juftShoes('assets/juft/2.png', 1),
              juftShoes('assets/juft/3.png', 2),
              juftShoes('assets/juft/4.png', 3),
              juftShoes('assets/juft/5.png', 4),
              juftShoes('assets/juft/6.png', 5),
            ],
          ),
        ),
      ],
    );
  }
}
