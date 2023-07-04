import 'package:e_commerce_mobile_app/moduls/data.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> with TickerProviderStateMixin {
  late final TabController controller;
  @override
  void initState() {
    super.initState();

    controller = TabController(length: dataBase.length, initialIndex: 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 190,
          child: PageView.builder(
              onPageChanged: (value) {
                controller.animateTo(value);
                setState(() {});
              },
              itemCount: dataBase.length,
              itemBuilder: (context, index) {
                final images = dataBase[index];
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(offset: Offset(0, 7), blurRadius: 6, color: Colors.black54),
                    ],
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('New Collection', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white)),
                            const Text('Discount 50 % for', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white60, height: 1.8)),
                            const Text('the first transaction', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white60)),
                            const SizedBox(height: 10),
                            ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                                  backgroundColor: const MaterialStatePropertyAll(Colors.green),
                                  minimumSize: const MaterialStatePropertyAll(Size(100, 35)),
                                ),
                                onPressed: () {},
                                child: const Text('Shop Now')),
                          ],
                        ),
                      ),
                      RotationTransition(
                        turns: const AlwaysStoppedAnimation(-30 / 260),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Image.asset(images['image-big'], height: 130, width: 180, fit: BoxFit.contain),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
        TabPageSelector(
          color: Colors.white38,
          indicatorSize: 8,
          selectedColor: Colors.green,
          controller: controller,
        )
      ],
    );
  }
}
