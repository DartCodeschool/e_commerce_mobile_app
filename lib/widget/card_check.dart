import 'package:flutter/material.dart';

class CartCheckBox extends StatefulWidget {
  const CartCheckBox({super.key});

  @override
  State<CartCheckBox> createState() => _CartCheckBoxState();
}

class _CartCheckBoxState extends State<CartCheckBox> {
  int item = 0;
  int add = 0;
  bool ontap1 = false;
  bool ontap2 = false;
  bool ontap3 = false;
  bool ontap4 = false;
  bool ontap5 = false;

  //sdkjfjkdjgdfg

  void onTap1(value) {
    setState(() {
      ontap1 = !ontap1;
      if (ontap1) {
        item++;
      } else {
        item--;
      }
    });
  }

  void onTap2(value) {
    setState(() {
      ontap2 = !ontap2;
      if (ontap2) {
        item++;
      } else {
        item--;
      }
    });
  }

  void onTap3(value) {
    setState(() {
      ontap3 = !ontap3;
      if (ontap3) {
        item++;
      } else {
        item--;
      }
    });
  }

  void onTap4(value) {
    setState(() {
      ontap4 = !ontap4;
      if (ontap4) {
        item++;
      } else {
        item--;
      }
    });
  }

  void onTap5(value) {
    setState(() {
      ontap5 = !ontap5;
      if (ontap5) {
        item++;
      } else {
        item--;
      }
    });
  }
  //fjsdhggjkdgjdgdfkjgkdjgkgj;g;gkak;ka;
  //jsfjkgdsfjgdsfgjgdkjfgdgdkjggdakjgjka

  void button1(value) {
    setState(() {
      ontap1 = !ontap1;
      if (ontap1) {
        item++;
      } else {
        item--;
      }
    });
  }

  void button2(value) {
    setState(() {
      ontap2 = !ontap2;
      if (ontap2) {
        item++;
      } else {
        item--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Row(
          children: [
            Checkbox(value: ontap1, onChanged: onTap1),
            Container(
              padding: const EdgeInsets.all(10),
              height: 80,
              width: 70,
              decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(10)),
              child: Image.asset('assets/images/1.png'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Nike Pegagus 39 Premium', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black87)),
                const Text('US 6', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black54)),
                Row(
                  children: [
                    const Text('\$101.85', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87)),
                    const SizedBox(width: 50),
                    ElevatedButton(
                        style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(30, 30)),
                          backgroundColor: MaterialStatePropertyAll(Colors.white54),
                        ),
                        onPressed: () {
                          if (add > 0) {
                            add--;
                          } else {
                            add = 0;
                          }
                        },
                        child: const Text('-', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54))),
                    Text(
                      '$add',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(30, 30)),
                          backgroundColor: MaterialStatePropertyAll(Colors.green),
                        ),
                        onPressed: () {
                          add++;
                        },
                        child: const Text('+', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white))),
                  ],
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Checkbox(value: ontap2, onChanged: onTap2),
            Container(
              padding: const EdgeInsets.all(10),
              height: 80,
              width: 70,
              decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(10)),
              child: Image.asset('assets/images/2.png'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Nike Pegagus FlyEase By You', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black87)),
                const Text('US 6', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black54)),
                Row(
                  children: [
                    const Text('\$101.85', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87)),
                    const SizedBox(width: 50),
                    ElevatedButton(
                        style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(30, 30)),
                          backgroundColor: MaterialStatePropertyAll(Colors.white54),
                        ),
                        onPressed: () {
                          setState(() {
                            if (add > 0) {
                              add--;
                            } else {
                              add = 0;
                            }
                          });
                        },
                        child: const Text('-', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54))),
                    Text(
                      '$add',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(30, 30)),
                          backgroundColor: MaterialStatePropertyAll(Colors.green),
                        ),
                        onPressed: () {
                          setState(() {});
                          add++;
                        },
                        child: const Text('+', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white))),
                  ],
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Checkbox(value: ontap3, onChanged: onTap3),
            Container(
              padding: const EdgeInsets.all(10),
              height: 80,
              width: 70,
              decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(10)),
              child: Image.asset('assets/images/3.png'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Nike Pegagus 40 By You', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black87)),
                const Text('US 6', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black54)),
                Row(
                  children: [
                    const Text('\$101.85', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87)),
                    const SizedBox(width: 50),
                    ElevatedButton(
                        style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(30, 30)),
                          backgroundColor: MaterialStatePropertyAll(Colors.white54),
                        ),
                        onPressed: () {
                          setState(() {
                            if (add > 0) {
                              add--;
                            } else {
                              add = 0;
                            }
                          });
                        },
                        child: const Text('-', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54))),
                    Text(
                      '$add',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(30, 30)),
                          backgroundColor: MaterialStatePropertyAll(Colors.green),
                        ),
                        onPressed: () {
                          setState(() {});
                          add++;
                        },
                        child: const Text('+', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white))),
                  ],
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Checkbox(value: ontap4, onChanged: onTap4),
            Container(
              padding: const EdgeInsets.all(10),
              height: 80,
              width: 70,
              decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(10)),
              child: Image.asset('assets/images/4.png'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Nike Pegagus 40', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black87)),
                const Text('US 6', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black54)),
                Row(
                  children: [
                    const Text('\$101.85', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87)),
                    const SizedBox(width: 50),
                    ElevatedButton(
                        style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(30, 30)),
                          backgroundColor: MaterialStatePropertyAll(Colors.white54),
                        ),
                        onPressed: () {
                          setState(() {
                            if (add > 0) {
                              add--;
                            } else {
                              add = 0;
                            }
                          });
                        },
                        child: const Text('-', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54))),
                    Text(
                      '$add',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(30, 30)),
                          backgroundColor: MaterialStatePropertyAll(Colors.green),
                        ),
                        onPressed: () {
                          setState(() {});
                          add++;
                        },
                        child: const Text('+', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white))),
                  ],
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Checkbox(value: ontap5, onChanged: onTap5),
            Container(
              padding: const EdgeInsets.all(10),
              height: 80,
              width: 70,
              decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(10)),
              child: Image.asset('assets/images/5.png'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Nike Pegagus 40 SE', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black87)),
                const Text('US 6', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black54)),
                Row(
                  children: [
                    const Text('\$101.85', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87)),
                    const SizedBox(width: 50),
                    ElevatedButton(
                        style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(30, 30)),
                          backgroundColor: MaterialStatePropertyAll(Colors.white54),
                        ),
                        onPressed: () {
                          setState(() {
                            if (add > 0) {
                              add--;
                            } else {
                              add = 0;
                            }
                          });
                        },
                        child: const Text('-', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54))),
                    Text(
                      '$add',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(30, 30)),
                          backgroundColor: MaterialStatePropertyAll(Colors.green),
                        ),
                        onPressed: () {
                          setState(() {});
                          add++;
                        },
                        child: const Text('+', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white))),
                  ],
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, right: 140, bottom: 30),
          child: Text(
            "Selected Item ($item)",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black87),
          ),
        ),
        ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              minimumSize: const MaterialStatePropertyAll(Size(330, 56)),
              backgroundColor: const MaterialStatePropertyAll(Colors.green),
            ),
            onPressed: () {},
            child: const Text('Checkout', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))),
      ],
    );
  }
}
