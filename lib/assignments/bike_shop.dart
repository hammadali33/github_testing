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
        toolbarHeight: 13.h,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(top: 20, left: 12),
          child: Text("Bike Shop Name", style: text1),
        ),
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
            child: Container(
              color: kscondary,
              height: 10.h,
              width: 25.w,
              child: Icon(
                Icons.search,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RotatedBox(
            quarterTurns: 4,
            child: RotatedBox(
              quarterTurns: 3,
              child: Container(
                // color: Colors.red,
                width: 100.w,
                height: 6.h,
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
          ),
          Container(
            margin: EdgeInsets.only(left: 4.w),
            // color: Colors.amber,
            // height: 40.h,
            width: 86.w,
            child: TabBarView(controller: _controller, children: [
              Container(
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("New Arrival", style: text1),
                        SizedBox(
                          height: 2.h,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topLeft: Radius.circular(30)),
                          child: Container(
                            color: kprimary,
                            height: 56.h,
                            width: 50.w,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    "All Terrain",
                                    style: text1,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Image.asset("assets/download.jpg"),
                                SizedBox(
                                  height: 2.h,
                                ),
                                GridView.builder(
                                  itemCount: text.length,
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisExtent: 8.h,
                                          crossAxisCount: text.length),
                                  itemBuilder: (e, i) => Column(
                                    children: [
                                      Text(
                                        title[i],
                                        style: text1,
                                      ),
                                      Text(text[i],
                                          style: TextStyle(
                                            fontSize: 18,
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "250,000",
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.add_shopping_cart,
                                        color: ktertiary,
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "Best Sellers",
                          style: text1,
                        ),
                        Row(
                          children: [
                            mycontainer(),
                            SizedBox(
                              width: 2.w,
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

  Container mycontainer() {
    return Container(
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
    );
  }
}
