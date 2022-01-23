import 'package:flutter/material.dart';
import 'package:github_testing/tiktok_ui/pages/tiktok_homepage.dart';
import 'package:sizer/sizer.dart';

class TikTokUiMain extends StatefulWidget {
  @override
  State<TikTokUiMain> createState() => _TikTokUiMainState();
}

class _TikTokUiMainState extends State<TikTokUiMain> {
  int selectedIndex = 0;

  List pages = [
    TiktokHomePage(),
    Text('Discover'),
    Text('Add'),
    Text('Chat'),
    Text('Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
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
              label: "",
              icon: Container(
                height: 5.h,
                width: 15.w,
                child: Center(
                  child: Container(
                    // color: Colors.white,
                    height: 5.h,
                    width: 12.w,
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.black,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    gradient:
                        LinearGradient(colors: [Colors.blue, Colors.red])),
              ),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "inbox"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
        body: Center(child: pages[selectedIndex]));
  }
}
