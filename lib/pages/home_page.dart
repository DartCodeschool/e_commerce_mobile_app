import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_mobile_app/widgets/new_arrilal_widget.dart';

import '../DataBase/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.sort, color: Colors.black)),
          title: const Text('Insightlancer', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.grey)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none, color: Colors.black)),
          ],
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      decoration: const BoxDecoration(color: Color.fromARGB(255, 234, 231, 231), borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: TextField(
                          decoration: InputDecoration(icon: Icon(Icons.search), hintText: 'What are you looking for?', hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w300), border: InputBorder.none),
                        ),
                      ),
                    ),
                    // TODO: make it slider
                    CarouselSlider(
                        items: const [
                          Collection1(),
                          Collection1(),
                          Collection1(),
                          Collection1(),
                        ],
                        options: CarouselOptions(
                          // height: 250,
                          enableInfiniteScroll: false,
                          viewportFraction: 0.9,
                          onPageChanged: (index, reason) {
                            print(index);
                            setState(() {
                              _current = index;
                            });
                          },
                        )),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sliderIndex(0),
                        sliderIndex(1),
                        sliderIndex(2),
                        sliderIndex(3),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Brand', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                          TextButton(
                            onPressed: () {},
                            child: const Text('See all', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Color.fromARGB(255, 49, 129, 52))),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: imagePath.map((path) {
                          return Brand(path);
                        }).toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('New Arrial', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                          TextButton(
                            onPressed: () {},
                            child: const Text('See all', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Color.fromARGB(255, 49, 129, 52))),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NewArrial(name: 'Vans', fon: 'assets/shoe_1.png', price: '\$ 15.00'),
                          NewArrial(name: 'Tufli', fon: 'assets/shoe_2.png', price: '\$ 37.00'),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NewArrial(name: 'Shippak', fon: 'assets/shoe_3.png', price: '\$ 8.00'),
                          NewArrial(name: 'Etik', fon: 'assets/shoe_4.png', price: '\$ 5.00'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              left: 30,
              bottom: 15,
              child: Container(
                height: 70,
                width: 300,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.home,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.grey,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.account_circle,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container sliderIndex(int index) {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: _current == index ? Colors.green : Colors.grey),
    );
  }
}

class Brand extends StatelessWidget {
  final String imagePath;
  const Brand(
    this.imagePath, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: 50, backgroundColor: const Color.fromARGB(255, 235, 230, 230), child: Image.asset(imagePath, height: 30, fit: BoxFit.fill));
  }
}

class Collection1 extends StatelessWidget {
  const Collection1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
      height: 200,
      decoration: const BoxDecoration(color: Colors.black, boxShadow: [BoxShadow(offset: Offset(0, 20), blurRadius: 10, color: Color.fromARGB(255, 177, 175, 175))], borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Column(
                children: [
                  const Text(' New Collection', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white)),
                  const SizedBox(height: 10),
                  const Text('Discount 50 % forthe first transaction', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: Colors.white)),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50)))),
                      backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 30, 100, 30)),
                    ),
                    child: const Text('Shop Now', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white)),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Image.asset('assets/shoe_3.png', height: 100),
          ),
        ],
      ),
    );
  }
}
