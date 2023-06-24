import 'package:flutter/material.dart';

class NewArriel extends StatefulWidget {
  const NewArriel({super.key});

  @override
  State<NewArriel> createState() => _NewArrielState();
}

class _NewArrielState extends State<NewArriel> {
  Widget getNewArriel(IconData icon, String img, String name, IconData star, String ball, String money) {
    return Column(children: [
      Container(
          margin: const EdgeInsets.only(left: 18),
          width: 170,
          height: 183,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(255, 247, 244, 244)),
          child: Column(children: [
            Padding(padding: const EdgeInsets.only(left: 100, top: 25), child: Icon(icon)),
            Padding(padding: const EdgeInsets.only(bottom: 0), child: Image.asset(img, scale: 3)),
          ])),
      Row(
        children: [Text(name), Icon(star, color: const Color.fromARGB(255, 255, 186, 59)), Text(ball)],
      ),
      Padding(
        padding: const EdgeInsets.only(right: 110),
        child: Text(money, style: const TextStyle(fontWeight: FontWeight.w700)),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'buy_now');
          },
          child: ListView(children: [
            Row(children: [
              getNewArriel(Icons.favorite, 'images/nike1.png', 'Nike Pegasus 39', Icons.star_border_outlined, '4.5', '\$83.97'),
              getNewArriel(Icons.favorite_outline, 'images/nike2.png', 'Nike Pegasus 39', Icons.star, '4.5', '\$83.97'),
            ]),
            Row(children: [
              getNewArriel(Icons.favorite, 'images/adidas1.png', 'Nike Pegasus 39', Icons.star_border_outlined, '4.5', '\$83.97'),
              getNewArriel(Icons.favorite_outline, 'images/adidas1.png', 'Nike Pegasus 39', Icons.star, '4.5', '\$83.99'),
            ]),
            Row(children: [
              getNewArriel(Icons.favorite_border_sharp, 'images/adidas3.png', 'Nike Pegasus 39', Icons.star_border_outlined, '4.5', '\$83.97'),
              getNewArriel(Icons.favorite_outline, 'images/nike1.png', 'Nike Pegasus 39', Icons.star, '4.5', '\$83.97'),
            ]),
          ]),
        ),
      ),
    );
  }
}
