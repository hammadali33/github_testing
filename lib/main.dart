import 'package:flutter/material.dart';
import 'package:github_testing/assignments/bike_shop.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (c, i, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BikeShop(),
      ),
    );
  }
}
