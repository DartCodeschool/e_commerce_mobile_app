import 'package:e_commerce_mobile_app/widgets/buy_widgets.dart';
import 'package:flutter/material.dart';

class BuyNow extends StatefulWidget {
  const BuyNow({super.key});

  @override
  State<BuyNow> createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFE5E5E5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Product Detalis', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.black)),
        actions: const [Icon(Icons.more_vert, color: Colors.black, size: 30)],
      ),
      body: Column(
        children: [
          Container(margin: const EdgeInsets.only(left: 5, top: 5), height: 300, width: 370, decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white)),
          const SizedBox(height: 20),
          const BuyWidgets(),
        ],
      ),
    );
  }
}
