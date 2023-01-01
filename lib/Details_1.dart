import 'package:flutter/material.dart';
import 'package:vitrendz/main.dart';

var sizes = ["S", "M", "L", "XL"];

class details_1 extends StatelessWidget {
  const details_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 24, top: 67, right: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            size: 26,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          "Details",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              letterSpacing: -0.8,
                              fontFamily: "GeneralSans_Semibold"),
                        ),
                        Image.asset(
                          "assets/images/Group.png",
                          height: 24,
                          width: 24,
                        ) // Bell
                      ],
                    ), // Details
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 11),
                          child: Container(
                            child: Image.asset("assets/images/image 1.png",
                                fit: BoxFit.cover),
                            height: 350,
                            width: 341,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 261),
                          child: Container(
                            child: const Icon(
                              Icons.favorite_border_rounded,
                              size: 40,
                            ),
                            height: 56.92,
                            width: 60.44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.56),
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ), // Image
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Regualr fit solgan",
                        style: TextStyle(
                            fontFamily: "GeneralSans_Semibold",
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.32,
                            fontSize: 24),
                      ),
                    ), // Title
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFA928),
                        ),
                        Text(
                          "4.5/5",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "GeneralSans_Medium"),
                        ),
                        Text(
                          " (45 reviews)",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "GeneralSans_Medium",
                              color: Color(0x99000000)),
                        ),
                      ],
                    ), // Ratings
                    const SizedBox(height: 10),
                    const Text(
                      "The name says it all, the right size slightly snugs the body leaving enough room for comfort in the sleeves and waist.",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "GeneralSans_Regular",
                          fontSize: 16,
                          color: Color(0x99000000)),
                    ), // Description
                    const SizedBox(height: 7),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Choose Size",
                        style: TextStyle(
                            fontFamily: "GeneralSans_SemiBold",
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ), // Size Font
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 47.08,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.25),
                                border: Border.all(
                                    width: 1, color: const Color(0x33000000))),
                            child: const Center(
                              child: Text(
                                "S",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    fontFamily: "GeneralSans_Medium"),
                              ),
                            ),
                          ), // S
                          const SizedBox(width: 10),
                          Container(
                            height: 47.08,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.25),
                                border: Border.all(
                                    width: 1, color: const Color(0x33000000))),
                            child: const Center(
                              child: Text(
                                "M",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    fontFamily: "GeneralSans_Medium"),
                              ),
                            ),
                          ), // M
                          const SizedBox(width: 10),
                          Container(
                            height: 47.08,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.25),
                                border: Border.all(
                                    width: 1, color: const Color(0x33000000))),
                            child: const Center(
                              child: Text(
                                "L",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    fontFamily: "GeneralSans_Medium"),
                              ),
                            ),
                          ), // L
                          const SizedBox(width: 10),
                          Container(
                            height: 47.08,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.25),
                                border: Border.all(
                                    width: 1, color: const Color(0x33000000))),
                            child: const Center(
                              child: Text(
                                "XL",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    fontFamily: "GeneralSans_Medium"),
                              ),
                            ),
                          ) // XL
                        ],
                      ),
                    ), // Size Options
                  ],
                )),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 75.1,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: Text(
                          "INR 1,190",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: "GeneralSans_SemiBold",
                            fontSize: 24,
                          ),
                        ),
                      ), // Rate
                      Container(
                        margin: EdgeInsets.only(left: 60),
                        height: 58,
                        width: 191,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                              size: 35,
                            ),
                            Text(
                              "  Add to Cart",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: "GeneralSans_Medium",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ) // Add to Cart
                    ],
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
