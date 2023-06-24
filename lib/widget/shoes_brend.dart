import 'package:e_commerce_mobile_app/moduls/data.dart';
import 'package:flutter/material.dart';

class ShoesBrend extends StatefulWidget {
  const ShoesBrend({super.key});

  @override
  State<ShoesBrend> createState() => _ShoesBrendState();
}

class _ShoesBrendState extends State<ShoesBrend> {
  // bool onchange2 = false;
  // bool onchange3 = false;
  // bool onchange4 = false;
  // bool onchange5 = false;
  // bool onchange6 = false;
  // bool onchange = false;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: dataBase.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 230),
        itemBuilder: (context, index) {
          final shoesImage = dataBase[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: Colors.blue[50],
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/product-details-page', arguments: shoesImage);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(padding: const EdgeInsets.only(right: 10), child: IconButton(onPressed: () {}, icon: const Icon(Icons.favorite, color: Colors.red))),
                        Padding(padding: const EdgeInsets.all(20), child: Image.asset(shoesImage["image-big"], height: 70, fit: BoxFit.fill)),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Text('Nike Pegagus 39', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black87)),
                    Padding(
                      padding: EdgeInsets.only(right: 8, left: 15),
                      child: Icon(Icons.star, color: Colors.yellow),
                    ),
                    Text('4.5', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black54)),
                  ],
                ),
                const SizedBox(height: 5),
                Text(shoesImage["sent"], style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
              ],
            ),
          );
        });
  }
}
