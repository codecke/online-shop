import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/Views/Shared/app_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/top.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 8,
                  bottom: 15,
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Athletic Shoes ",
                      style: appStyleWithHt(
                        42,
                        Colors.white,
                        FontWeight.bold,
                        1.5,
                      ),
                    ),
                    Text(
                      "Collection",
                      style: appStyleWithHt(
                        42,
                        Colors.white,
                        FontWeight.bold,
                        1.2,
                      ),
                    ),
                    TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.transparent,
                        controller: _tabController,
                        isScrollable: true,
                        labelColor: Colors.white,
                        labelStyle: appStyle(24, Colors.white, FontWeight.bold),
                        unselectedLabelColor: Colors.grey.withOpacity(0.3),
                        tabs: const [
                          Tab(
                            text: 'Men shoes',
                          ),
                          Tab(
                            text: 'Women shoes',
                          ),
                          Tab(
                            text: 'Kids shoes',
                          ),
                        ]),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.265,
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 12),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.405,
                          color: Colors.amber,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Latest Shoes",
                                  style: appStyle(
                                    24,
                                    Colors.black,
                                    FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Show all",
                                      style: appStyle(
                                        22,
                                        Colors.black,
                                        FontWeight.w500,
                                      ),
                                    ),
                                    Icon(
                                      AntIcons.caretRightFilled,
                                      size: 20,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.405,
                          color: Colors.green,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.405,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
