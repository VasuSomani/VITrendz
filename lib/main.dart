import 'package:flutter/material.dart';
import 'package:vitrendz/List_of_Items.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cat = ["All", "Men", "Women", "Kids"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Discover",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    fontFamily: "GeneralSans_SemiBold",
                    letterSpacing: -0.8,
                    color: Colors.black),
              ), //Discover
              Image.asset(
                "assets/images/Group.png",
                height: 24,
                width: 24,
              ) //Bell
            ],
          ),
          toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Colors.white,
          // Discover,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 14),
                        child: Container(
                          width: 279,
                          height: 53,
                          decoration:
                              const BoxDecoration(color: Color(0xFFF2F2F2)),
                        ),
                      ), //Search Box
                      Padding(
                        padding: const EdgeInsets.only(left: 45, top: 31),
                        child: Image.asset(
                          "assets/images/Search.png",
                          width: 18,
                          height: 18,
                        ),
                      ), //Search Icon
                      const Padding(
                        padding: EdgeInsets.only(left: 76, top: 29),
                        child: Text(
                          "Search anything",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.32,
                              color: Color(0x99000000),
                              fontFamily: "GeneralSans_Regular"),
                        ),
                      ), //Search Text
                    ],
                  ), //Search Bar
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 9, top: 14),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 53,
                          height: 53,
                        ),
                      ), //Black Container
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 28),
                        child: Container(
                          height: 24,
                          width: 24,
                          child: const Icon(
                            Icons.filter_list_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ), //Filter Lines
                    ],
                  ), //Sort
                ],
              ), // Search + Sort
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16, right: 25),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 38,
                        width: 65,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            "All",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: "GeneralSan_Regular"),
                          ),
                        ),
                      ), //All
                      const SizedBox(width: 15),
                      Container(
                        height: 38,
                        width: 79,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            "Men",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: "GeneralSan_Regular"),
                          ),
                        ),
                      ), //Men
                      const SizedBox(width: 15),
                      Container(
                        height: 38,
                        width: 91,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            "Women",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: "GeneralSan_Regular"),
                          ),
                        ),
                      ), //Women
                      const SizedBox(width: 15),
                      Container(
                        height: 38,
                        width: 91,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            "Kids",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: "GeneralSan_Regular"),
                          ),
                        ),
                      ), //Kids
                    ],
                  ),
                ),
              ), // Categories
              const Items_List(), //GridView
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                label: "Home",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_rounded,
                  size: 30,
                ),
                label: "Saved",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                ),
                label: "Cart",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_outlined,
                  size: 30,
                ),
                label: "Settings",
                backgroundColor: Colors.black),
          ],
        ),
      ),
    );
  }
}
