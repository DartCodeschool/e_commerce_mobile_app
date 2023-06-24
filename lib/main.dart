import 'package:e_commerce_mobile_app/Pages/%20buy_now.dart';
import 'package:e_commerce_mobile_app/Pages/check_out.dart';
import 'package:e_commerce_mobile_app/Pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_page',
      routes: {
        'home_page': (context) {
          return const HomePage();
        },
        'buy_now': (context) {
          return const BuyNow();
        },
        'check_out': (context) {
          return const CheckOut();
        }
      },
    );
  }
}
