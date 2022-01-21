import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TikTokUiMain extends StatelessWidget {
  const TikTokUiMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          pages(Colors.amber),
          pages(Colors.black),
          pages(Colors.green),
          pages(Colors.orange),
          Text("saasassasas"),
          Center(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(),
                  Container(),
                  Text(""),
                  Text(""),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container pages(Color c) {
    return Container(height: double.infinity, width: double.infinity, color: c);
  }
}
