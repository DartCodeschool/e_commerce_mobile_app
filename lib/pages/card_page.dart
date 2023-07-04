import 'package:e_commerce_mobile_app/widget/bottom_button.dart';
import 'package:e_commerce_mobile_app/widget/card_check.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
            title: const Text('Cart', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black87)),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
          body: const CartCheckBox(),
          bottomNavigationBar: BottomButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home-page');
            },
            title: 'Checkout',
          )),
    );
  }
}
