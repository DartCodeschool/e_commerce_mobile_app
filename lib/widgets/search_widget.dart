import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 17),
      height: 45,
      width: 350,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color.fromARGB(255, 218, 217, 217)),
      child: const TextField(
          decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        icon: Padding(padding: EdgeInsets.only(left: 13), child: Icon(Icons.search, color: Colors.black, size: 30)),
        border: InputBorder.none,
        hintText: 'What are you looking for?',
        helperStyle: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w700),
      )),
    );
  }
}
