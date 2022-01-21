import 'package:flutter/material.dart';

class TikTokUiMain extends StatefulWidget {
  @override
  State<TikTokUiMain> createState() => _TikTokUiMainState();
}

class _TikTokUiMainState extends State<TikTokUiMain> {
  int selectedIndex = 0;

  List pages = [
    Text('1'),
    Text('2'),
    Text('3'),
    Text('4'),
    Text('5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Discover"),
            BottomNavigationBarItem(
              icon: Container(),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "inbox"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
        body: pages[selectedIndex]);
  }

  Container pages2(Color c) {
    return Container(height: double.infinity, width: double.infinity, color: c);
  }
}
