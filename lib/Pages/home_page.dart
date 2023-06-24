import 'package:e_commerce_mobile_app/widgets/%20new_arriel.dart';
import 'package:e_commerce_mobile_app/widgets/logo_widgets.dart';

import 'package:e_commerce_mobile_app/widgets/new_collection.dart';
import 'package:e_commerce_mobile_app/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFE5E5E5),
          leading: const Icon(Icons.sort, color: Colors.black),
          title: const Text('Insighlancer', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700, color: Colors.grey)),
          actions: const [Padding(padding: EdgeInsets.only(right: 15), child: Icon(Icons.notifications, color: Colors.black))],
        ),
        body: const Column(children: [
          SearchWidget(),
          SizedBox(height: 20),
          NweCollection(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Brend', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
                Text('See all', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w700)),
              ],
            ),
          ),
          SizedBox(height: 20),
          LogoWidgets(),
          SizedBox(height: 30),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text('New Arrial', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
                Text('See all', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w700)),
              ])),
          NewArriel(),
        ]),
        floatingActionButton: Stack(alignment: Alignment.center, children: [
          Container(
              margin: const EdgeInsets.only(right: 20, bottom: 10),
              height: 55,
              width: 320,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.black),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.home, color: Colors.white)),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'buy_now');
                      },
                      icon: const Icon(Icons.favorite_outline, color: Colors.white)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.white)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.contact_page, color: Colors.white)),
                ]),
              ))
        ]));
  }
}
