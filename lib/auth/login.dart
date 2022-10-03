import 'package:flutter/material.dart';
import 'package:synchr_nicity/color.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: mycolor),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: Get.height * 1,
            child: Padding(
              padding: EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  // SizedBox(
                  //   height: 130,
                  // ),
                  Text(
                    'Login to your account',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Username",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
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
                        color: Color.fromARGB(255, 255, 255, 255),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("forgot?",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 12,
                          )),
                    ],
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
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: Get.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: Get.width * 0.3,
                          color: Color.fromARGB(66, 255, 255, 255),
                        ),
                        SizedBox(width: 10),
                        Text("Or",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(66, 255, 255, 255),
                              fontSize: 14,
                            )),
                        SizedBox(width: 10),
                        Container(
                          height: 1,
                          width: Get.width * 0.3,
                          color: Color.fromARGB(66, 255, 255, 255),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: HexColor('#2071ED'),
                    ),
                    child: const Center(
                      child: Text(
                        'Login with Facebook',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: HexColor('#EA4335'),
                    ),
                    child: const Center(
                      child: Text(
                        'Login with Gmail',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Center(
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(
                              color: Color.fromRGBO(87, 104, 152, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const SizedBox(
                        width: 20,
                        child: Text("|",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(87, 104, 152, 1),
                            )),
                      ),
                      Container(
                        child: const Center(
                          child: Text(
                            'Terms Of Use',
                            style: TextStyle(
                                color: Color.fromRGBO(87, 104, 152, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
