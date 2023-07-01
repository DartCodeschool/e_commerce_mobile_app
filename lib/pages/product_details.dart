import 'package:e_commerce_mobile_app/widget/shoes_juft.dart';
import 'package:flutter/material.dart';

import '../widget/button.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});
  @override
  Widget build(BuildContext context) {
    final imageBig = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.blue[50],
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('Product Details', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black87)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 400, child: ShoesTwo()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text("Women's Road Running Shoes", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black38)),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.5', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black38)),
                          ],
                        ),
                      ],
                    ),
                    Text(imageBig["brent-name"], style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87)),
                    const SizedBox(height: 10),
                    Text(imageBig["sent"], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                    const Divider(thickness: 1.5),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Select Size', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black87)),
                        Text('Size Chart', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black54)),
                      ],
                    ),
                    const OnchangeButton(),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text('Descriptions', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black87)),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                            backgroundColor: const MaterialStatePropertyAll(Colors.green),
                            minimumSize: const MaterialStatePropertyAll(Size(330, 56)),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/card-page');
                          },
                          child: const Text('Buy Now', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600))),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
