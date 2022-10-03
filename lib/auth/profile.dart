import 'package:flutter/material.dart';
import 'package:synchr_nicity/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: mycolor),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            // height: Get.height * 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                // SizedBox(
                //   height: 130,
                // ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: Get.height * 0.5,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/Rectangle15.png',
                        fit: BoxFit.cover,
                      ),
                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            HexColor("120844"),
                            Colors.transparent,
                            // Colors.transparent,
                            HexColor("120844")
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0, 0.3, 1],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -60,
                      left: 100,
                      child: Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: (Border.all(
                            color: Color(0xff6D29BD),
                            width: 3,
                          )),
                          image: DecorationImage(
                            image: AssetImage("assets/images/MaskGroup7.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 70,
                ),
                Center(
                  child: Text(
                    "Jenny Josef",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w600,
                        // height: 1,
                        fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Divider(
                      height: 2, color: Color.fromARGB(54, 255, 255, 255)),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: Get.height * 0.20,
                        width: Get.width * 0.28,
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(6.0),
                            topRight: const Radius.circular(6.0),
                            bottomRight: const Radius.circular(6.0),
                            bottomLeft: const Radius.circular(6.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/Rectangle153.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: Get.height * 0.20,
                        width: Get.width * 0.28,
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(6.0),
                            topRight: const Radius.circular(6.0),
                            bottomRight: const Radius.circular(6.0),
                            bottomLeft: const Radius.circular(6.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/Rectangle15.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: Get.height * 0.20,
                        width: Get.width * 0.28,
                        decoration: BoxDecoration(
                          color: HexColor("#05042A"),
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(6.0),
                            topRight: const Radius.circular(6.0),
                            bottomRight: const Radius.circular(6.0),
                            bottomLeft: const Radius.circular(6.0),
                          ),
                          // image: DecorationImage(
                          //   image: AssetImage("assets/images/Rectangle153.png"),
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                "assets/images/Iconly-Bold-Image2.svg",
                                height: 28,
                                width: 28,
                                fit: BoxFit.scaleDown),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Add more Photos',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Divider(
                      height: 3, color: Color.fromARGB(34, 255, 255, 255)),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // width: Get.width * 0.2,
                        child: Text(
                          'Bio',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                      Container(
                        width: Get.width * 0.5,
                        // height: 60,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true, //<-- SEE HERE
                              fillColor: Color.fromARGB(0, 255, 255, 255),
                              hintText: "Describe yourself...",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              isDense: true,
                              // hintText: 'Enter your email',
                              contentPadding:
                                  EdgeInsets.fromLTRB(14, 10, 14, 10),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // width: Get.width * 0.2,
                        child: Text(
                          'Add',
                          style: TextStyle(
                              color: HexColor("#6D29BD"),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Divider(
                      height: 2, color: Color.fromARGB(54, 255, 255, 255)),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // width: Get.width * 0.2,
                        child: Text(
                          'Passions',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                      Container(
                        width: Get.width * 0.5,
                        // height: 60,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true, //<-- SEE HERE
                              fillColor: Color.fromARGB(0, 255, 255, 255),
                              hintText: "Describe yourself...",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              isDense: true,
                              // hintText: 'Enter your email',
                              contentPadding:
                                  EdgeInsets.fromLTRB(14, 10, 14, 10),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // width: Get.width * 0.2,
                        child: Text(
                          'Add',
                          style: TextStyle(
                              color: HexColor("#6D29BD"),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
