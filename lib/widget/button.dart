import 'package:flutter/material.dart';

class OnchangeButton extends StatefulWidget {
  const OnchangeButton({super.key});

  @override
  State<OnchangeButton> createState() => _OnchangeButtonState();
}

class _OnchangeButtonState extends State<OnchangeButton> {
  bool ontap = false;
  bool ontap1 = false;
  bool ontap2 = false;
  bool ontap3 = false;
  bool ontap4 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(ontap ? Colors.green : Colors.white),
              minimumSize: const MaterialStatePropertyAll(Size(45, 30)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: BorderSide(color: ontap ? Colors.green : Colors.green))),
            ),
            onPressed: () {
              setState(() {
                ontap = !ontap;
              });
            },
            child: Text('US 4', style: TextStyle(fontSize: 12, color: ontap ? Colors.white : Colors.black))),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(ontap1 ? Colors.green : Colors.white),
              minimumSize: const MaterialStatePropertyAll(Size(45, 30)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: BorderSide(color: ontap1 ? Colors.green : Colors.green))),
            ),
            onPressed: () {
              setState(() {});
              ontap1 = !ontap1;
            },
            child: Text('US 4.5', style: TextStyle(fontSize: 12, color: ontap1 ? Colors.white : Colors.black))),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(ontap2 ? Colors.green : Colors.white),
              minimumSize: const MaterialStatePropertyAll(Size(45, 30)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: BorderSide(color: ontap2 ? Colors.green : Colors.green))),
            ),
            onPressed: () {
              setState(() {
                ontap2 = !ontap2;
              });
            },
            child: Text('US 5', style: TextStyle(fontSize: 12, color: ontap2 ? Colors.white : Colors.black))),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(ontap3 ? Colors.green : Colors.white),
              minimumSize: const MaterialStatePropertyAll(Size(45, 30)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: BorderSide(color: ontap3 ? Colors.green : Colors.green))),
            ),
            onPressed: () {
              setState(() {
                ontap3 = !ontap3;
              });
            },
            child: Text('US 5.5', style: TextStyle(fontSize: 12, color: ontap3 ? Colors.white : Colors.black))),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(ontap4 ? Colors.green : Colors.white),
              minimumSize: const MaterialStatePropertyAll(Size(45, 30)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: BorderSide(color: ontap4 ? Colors.green : Colors.green))),
            ),
            onPressed: () {
              ontap4 = !ontap4;
            },
            child: Text('US 6', style: TextStyle(fontSize: 12, color: ontap4 ? Colors.white : Colors.black))),
      ],
    );
  }
}
