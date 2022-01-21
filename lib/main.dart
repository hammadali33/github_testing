import 'package:flutter/material.dart';
import 'package:github_testing/tiktok_ui/tiktok_ui_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TikTokUiMain(),
    );
  }
}
