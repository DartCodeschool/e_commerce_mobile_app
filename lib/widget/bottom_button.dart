
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const BottomButton({
    super.key, required this.title, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:20, bottom: 20, left: 20, right: 20),
      decoration: const BoxDecoration(
        // color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0,
            blurRadius: 7,
            offset: Offset(0, -4), // changes position of shadow
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: 10,
            blurRadius: 0,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
            backgroundColor: const MaterialStatePropertyAll(Colors.green),
            minimumSize: const MaterialStatePropertyAll(Size(330, 56)),
          ),
          onPressed: onPressed,
          child: Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600))),
    );
  }
}
