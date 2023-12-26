import 'package:flutter/material.dart';

import 'id_info.dart';
import 'user_info.dart';

class VisitorViewBody extends StatelessWidget {
  const VisitorViewBody({
    super.key,
    required this.controller,
    required this.appBarColor,
    required this.icons,
  });
  final ScrollController controller;
  final Color appBarColor;
  final Color icons;

  @override
  Widget build(BuildContext context) {
    final List<Tab> myTabs = [
      const Tab(
        text: 'Shine On',
      ),
      const Tab(text: 'Identification File'),
    ];
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              controller: controller,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenWidth * 0.16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        width: screenWidth * 0.25,
                        height: screenWidth * 0.25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: Colors.white),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/user.png")),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "User Name",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.06,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: UserInfo(screenWidth: screenWidth),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: IdInfo(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: screenWidth,
                      height: screenHight * 0.6,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "User's Bio ",
                                style: TextStyle(color: Colors.blueGrey),
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                child: DefaultTabController(
                                  length: myTabs.length,
                                  child: Column(
                                    children: [
                                      TabBar(tabs: myTabs),
                                      SizedBox(
                                        height: screenHight * 0.4,
                                        child: TabBarView(children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    const Text("Gift"),
                                                    const Spacer(),
                                                    const Text(
                                                      "See All",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.blueGrey),
                                                    ),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: const Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                          color:
                                                              Colors.blueGrey,
                                                        ))
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Voice "),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  "There is no audio recording at this time",
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text("Close Friends "),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  "There is no close friends at this time",
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: screenWidth,
            height: screenHight * 0.1,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: screenWidth * 0.4,
                      height: screenHight * 0.07,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            "Follow",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: screenWidth * 0.4,
                      height: screenHight * 0.07,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.group_add_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Add Friends",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ]),
          )
        ],
      ),
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          "User Name",
          style: TextStyle(color: icons),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: icons,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: icons,
          ),
        ),
      ),
    );
  }
}
