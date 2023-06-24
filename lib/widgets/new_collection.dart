import 'package:flutter/material.dart';

class NweCollection extends StatefulWidget {
  const NweCollection({super.key});

  @override
  State<NweCollection> createState() => _NweCollectionState();
}

class _NweCollectionState extends State<NweCollection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0),
      height: 170,
      width: 360,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.black),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(top: 35, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Nwe Collection', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white)),
              const SizedBox(height: 7),
              const Text('Discount 50% for', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
              const SizedBox(height: 3),
              const Text('the fist trensaction', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
              const SizedBox(height: 5),
              ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: const MaterialStatePropertyAll(Size(0, 25)),
                    backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 47, 121, 49)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                  ),
                  onPressed: () {},
                  child: const Text('Shop Now')),
            ],
          ),
        )
      ]),
    );
  }
}
