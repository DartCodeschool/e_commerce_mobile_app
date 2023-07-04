import 'package:flutter/material.dart';

class CartCheckBox extends StatefulWidget {
  const CartCheckBox({super.key});

  @override
  State<CartCheckBox> createState() => _CartCheckBoxState();
}

class _CartCheckBoxState extends State<CartCheckBox> {
  List<Map> categories = [
    {"int": 1, "sent": "\$101.85", "image-big": "assets/images/1.png", "name": "Nike Pegasus 39 Premium", 'ontap': false},
    {"int": 1, "sent": "\$183.35", "image-big": "assets/images/2.png", "name": "Nike Pegasus FlyEase By You", 'ontap': false},
    {"int": 1, "sent": "\$183.35", "image-big": "assets/images/3.png", "name": "Nike Pegasus 40 By You", 'ontap': false},
    {"int": 1, "sent": "\$145.44", "image-big": "assets/images/4.png", "name": "Nike Pegasus 40", 'ontap': false},
    {"int": 1, "sent": "\$145.44", "image-big": "assets/images/5.png", "name": "Nike Pegasus 40 SE", 'ontap': false},
  ];
  int answer = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 9,
          child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final commonInfo = categories[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Checkbox(
                        activeColor: Colors.green,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        value: commonInfo['ontap'],
                        onChanged: (value) {
                          setState(() {
                            commonInfo['ontap'] = !commonInfo['ontap'];
                            if (commonInfo['ontap']) {
                              answer++;
                            } else {
                              answer--;
                            }
                          });
                        }),
                    title: Row(
                      children: [
                        Container(padding: const EdgeInsets.all(10), height: 70, width: 70, decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(10)), child: Image.asset(commonInfo['image-big'])),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(commonInfo['name'], style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.black87, height: 1.8)),
                              const Text('US 6', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black54)),
                              Row(
                                children: [
                                  Text(commonInfo['sent'], style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black87, height: 1.8)),
                                  const SizedBox(width: 30),
                                  ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStatePropertyAll(Colors.blue[50]),
                                        minimumSize: const MaterialStatePropertyAll(Size(25, 30)),
                                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                      ),
                                      onPressed: () {
                                        setState(() {});
                                        if (commonInfo['int'] > 1) {
                                          commonInfo['int']--;
                                        } else {
                                          commonInfo['int'] = 1;
                                        }
                                      },
                                      child: const Text('-', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black45))),
                                  Text("${commonInfo['int']}", style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black87)),
                                  ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor: const MaterialStatePropertyAll(Colors.green),
                                        minimumSize: const MaterialStatePropertyAll(Size(25, 30)),
                                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          commonInfo['int']++;
                                        });
                                      },
                                      child: const Text('+', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
        SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 20),
            child: Text(
              'Selected Item ($answer)',
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black87),
            ),
          ),
        ),
      ],
    );
  }
}
