import 'package:e_commerce_mobile_app/pages/card_page.dart';
import 'package:e_commerce_mobile_app/pages/home_page.dart';
import 'package:e_commerce_mobile_app/pages/product_details.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home-page',
      routes: {
        '/home-page': (context) => const HomePage(),
        '/product-details-page': (context) => const ProductDetails(),
        '/card-page': (context) => const CardPage(),
      },
    );
  }
}
