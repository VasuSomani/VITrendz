import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vitrendz/Details_1.dart';

class Items_List extends StatelessWidget {
  const Items_List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arrTitle = [
      "Regular fit slogan",
      "Regular fit polo",
      "Regular fit color block",
      "Regular fit v-neck",
      "Regular fit slogan -p",
      "Regular fit slogan -b"
    ];
    var arrSubTitle = [
      "INR 1,190",
      "INR 1,100 -52%",
      "INR 1,690",
      "INR 1,290",
      "INR 1,190",
      "INR 1,190"
    ];
    var arrImages = [
      "assets/images/image 1.png",
      "assets/images/image 2.png",
      "assets/images/image 3.png",
      "assets/images/image 1.png",
      "assets/images/image 4.png",
      "assets/images/image 2.png",
    ];
    return Expanded(
      child: GridView.builder(
          itemCount: arrTitle.length,
          physics: const ScrollPhysics(),
          padding: const EdgeInsets.only(left: 24, top: 24, right: 25),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 19,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.3),
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => details_1(),
                      )),
                  child: Stack(
                    children: [
                      SizedBox(
                          height: 174,
                          width: 161,
                          child: Image.asset(arrImages[index])),
                      // Image
                      Padding(
                        padding: const EdgeInsets.only(left: 112, top: 12),
                        child: Container(
                            height: 34.84,
                            width: 37,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.63),
                                color: Colors.white),
                            child: Icon(CupertinoIcons.heart, size: 18.5)),
                      ), // Icon
                    ],
                  ),
                ), // Image + Icon
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    arrTitle[index],
                    style: const TextStyle(
                        fontFamily: "GeneralSans_Semibold",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        letterSpacing: -0.32),
                  ),
                ), // Title
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Text(
                    arrSubTitle[index],
                    style: const TextStyle(
                        fontFamily: "GeneralSans_Medium",
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        letterSpacing: -0.32),
                    textAlign: TextAlign.left,
                  ),
                ), // SubTitle
              ],
            );
          }),
    );
  }
}
