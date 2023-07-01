import 'package:flutter/material.dart';

class OnchangeButton extends StatefulWidget {
  const OnchangeButton({super.key});

  @override
  State<OnchangeButton> createState() => _OnchangeButtonState();
}

class _OnchangeButtonState extends State<OnchangeButton> {
  int current = 0;
  Widget selectSize(String text, int index) {
    return ElevatedButton(
        style: ButtonStyle(
          side: const MaterialStatePropertyAll(BorderSide(color: Colors.green)),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
          minimumSize: const MaterialStatePropertyAll(Size(15, 35)),
          backgroundColor: MaterialStatePropertyAll(current == index ? Colors.green : Colors.white),
        ),
        onPressed: () {
          setState(() {
            current = index;
          });
        },
        child: Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11, color: current == index ? Colors.white : Colors.black54)));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        selectSize('US 4', 0),
        selectSize('US 4.5', 1),
        selectSize('US 5', 2),
        selectSize('US 5.5', 3),
        selectSize('US 6', 4),
      ],
    );
  }
}
