import 'package:flutter/material.dart';

class TiktokHomePage extends StatelessWidget {
  const TiktokHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        pages(Colors.black),
        pages(Colors.green),
        pages(Colors.yellow),
        pages(Colors.purple),
        pages(Colors.pink),
        pages(Colors.grey),
        pages(Colors.amber),
      ],
    );
  }
}

Widget pages(Color c) {
  return Container(height: double.infinity, width: double.infinity, color: c);
}
