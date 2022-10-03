import 'package:flutter/material.dart';
import 'package:synchr_nicity/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class signProfileCreation extends StatefulWidget {
  const signProfileCreation({Key? key}) : super(key: key);

  @override
  State<signProfileCreation> createState() => _signProfileCreationState();
}

class _signProfileCreationState extends State<signProfileCreation> {
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
            child: Padding(
              padding: EdgeInsets.fromLTRB(40, 60, 40, 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  // SizedBox(
                  //   height: 130,
                  // ),

                  Center(
                    child: Stack(children: [
                      Container(
                        width: 150,
                        height: 150,
                        child: Image.asset(
                          'assets/images/MaskGroup7.png',
                          fit: BoxFit.contain,
                        ),
                        decoration: BoxDecoration(shape: BoxShape.circle),
                      ),
                      Positioned(
                          bottom: 10,
                          right: 5,
                          child: Container(
                            height: 24,
                            width: 24,
                            child: SvgPicture.asset(
                                'assets/images/ionic-ios-add-circle.svg'),
                          ))
                    ]),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "username",
                    style: TextStyle(
                        color: HexColor("#576898"),
                        fontWeight: FontWeight.normal,
                        // height: 1,
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: Get.width * 1,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: Color.fromARGB(255, 255, 255, 255),
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
                        contentPadding: EdgeInsets.fromLTRB(14, 10, 14, 10),
                        hintStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "full name",
                    style: TextStyle(
                        color: HexColor("#576898"),
                        fontWeight: FontWeight.normal,
                        // height: 1,
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: Get.width * 1,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: Color.fromARGB(255, 255, 255, 255),
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
                        contentPadding: EdgeInsets.fromLTRB(14, 10, 14, 10),
                        hintStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                        color: HexColor("#576898"),
                        fontWeight: FontWeight.normal,
                        // height: 1,
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true, //<-- SEE HERE
                      fillColor: Color.fromARGB(255, 255, 255, 255),
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
                      // hintText: 'password',
                      contentPadding: EdgeInsets.fromLTRB(14, 10, 14, 10),
                      hintStyle: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "confirm password",
                    style: TextStyle(
                        color: HexColor("#576898"),
                        fontWeight: FontWeight.normal,
                        // height: 1,
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true, //<-- SEE HERE
                      fillColor: Color.fromARGB(255, 255, 255, 255),
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
                      // hintText: 'password',
                      contentPadding: EdgeInsets.fromLTRB(14, 10, 14, 10),
                      hintStyle: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: IntlPhoneField(
                      autofocus: true,
                      flagsButtonPadding: EdgeInsets.fromLTRB(14, 6, 14, 6),
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                      showDropdownIcon: false,
                      dropdownTextStyle: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                      decoration: InputDecoration(
                        // labelText: 'Phone Number',
                        // border: OutlineInputBorder(
                        //   borderSide: BorderSide(),
                        // ),

                        hintStyle: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                        filled: true, //<-- SEE HERE
                        fillColor: Color.fromARGB(255, 255, 255, 255),
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
                        // hintText: 'password',
                        contentPadding: EdgeInsets.zero,
                      ),
                      initialCountryCode: 'US',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                      // width: Get.width * 1,
                    ),
                  ),

                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor('#6D29BD'),
                    ),
                    child: const Center(
                      child: Text(
                        'Save & Proceed',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
