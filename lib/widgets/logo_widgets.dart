import 'package:flutter/material.dart';

class LogoWidgets extends StatefulWidget {
  const LogoWidgets({super.key});

  @override
  State<LogoWidgets> createState() => _LogoWidgetsState();
}

class _LogoWidgetsState extends State<LogoWidgets> {
  @override
  Widget build(BuildContext context) {
    Widget getLogo(String img) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: CircleAvatar(
          radius: 55,
          backgroundImage: AssetImage(img),
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        getLogo('images/nike.png'),
        getLogo('images/reebok.png'),
        getLogo('images/adidas.png'),
        getLogo('images/puma.png'),
        getLogo('images/zara.png'),
      ]),
    );
  }
}
