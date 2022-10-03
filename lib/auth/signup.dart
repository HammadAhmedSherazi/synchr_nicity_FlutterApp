import 'package:flutter/material.dart';
import 'package:synchr_nicity/color.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
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
                    'Get Started',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'enter your mobile number to sign up',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.normal,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 14,
                  ),

                  Container(
                    child: IntlPhoneField(
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

                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor('#6D29BD'),
                    ),
                    child: const Center(
                      child: Text(
                        'Sign Up With Phone',
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
                        'Sign Up with Facebook',
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
                        'Sign Up with Gmail',
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

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
