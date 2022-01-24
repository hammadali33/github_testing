import 'package:flutter/material.dart';
import 'package:github_testing/utils/constant.dart';
import 'package:sizer/sizer.dart';

class BikeShop extends StatefulWidget {
  const BikeShop({Key? key}) : super(key: key);

  @override
  State<BikeShop> createState() => _BikeShopState();
}

class _BikeShopState extends State<BikeShop> with TickerProviderStateMixin {
  List title = [
    "24A",
    "400W",
    "30Km",
  ];
  List text = [
    "Battery",
    "Engine",
    "Distanse",
  ];

  @override
  Widget build(BuildContext context) {
    TabController _controller = TabController(length: 4, vsync: this);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 12.h,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(top: 20, left: 12),
          child: Text("Bike Shop Name", style: text1),
        ),
        actions: [
          Container(
            height: 10.h,
            width: 25.w,
            child: Icon(
              Icons.search,
              size: 30,
            ),
            decoration: BoxDecoration(
              color: kscondary,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
            ),
          )
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RotatedBox(
            quarterTurns: 3,
            child: Container(
              width: 120.w,
              child: TabBar(
                  controller: _controller,
                  labelColor: kscondary,
                  indicatorColor: kscondary,
                  unselectedLabelColor: ktertiary,
                  indicatorWeight: 4,
                  indicatorPadding: EdgeInsets.only(bottom: 5.h),
                  labelStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text: "Kids",
                    ),
                    Tab(
                      text: "Men",
                    ),
                    Tab(
                      text: "Woman",
                    ),
                  ]),
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          Expanded(
            child: TabBarView(controller: _controller, children: [
              Container(
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("New Arrival", style: text1),
                        SizedBox(
                          height: 1.h,
                        ),
                        Container(
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: kprimary,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "All Terrain",
                                style: text1,
                              ),
                              Image.asset("assets/download.jpg"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ...generate_row(),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "250,000",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Icon(
                                    Icons.add_shopping_cart,
                                    color: ktertiary,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "Best Sellers",
                          style: text1,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            mycontainer(),
                            SizedBox(
                              width: 4.w,
                            ),
                            mycontainer(),
                          ],
                        ),
                      ]),
                ),
              ),
              Text(
                "Kids",
                style: text1,
              ),
              Text(
                "Men",
                style: text1,
              ),
              Text(
                "Woman",
                style: text1,
              ),
            ]),
          )
        ],
      ),
    );
  }

  List<Widget> generate_row() {
    return List.generate(
      3,
      (index) => Row(
        children: [
          Column(
            children: [
              Text(
                title[index],
                style: text1,
              ),
              Text(text[index],
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Widget mycontainer() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: kprimary, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Image.asset(
            "assets/download.jpg",
            height: 15.h,
            width: 36.w,
          ),
        ),
      ),
    );
  }
}
