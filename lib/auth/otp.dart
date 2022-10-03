import 'package:flutter/material.dart';
import 'package:synchr_nicity/color.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
// import 'package:otp_text_field/style.dart';

class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  State<otp> createState() => _otpState();
}

int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 60;

class _otpState extends State<otp> {
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
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  // SizedBox(
                  //   height: 130,
                  // ),
                  Text(
                    'Verify Your Number',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Insert the 4-digit OTP code that has been sent to your device for verification.',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w100,
                        fontSize: 10),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 14,
                  ),

                  Container(
                    child: OtpTextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),

                      numberOfFields: 4,
                      hasCustomInputDecoration: true,
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Verification Code"),
                                content:
                                    Text('Code entered is $verificationCode'),
                              );
                            });
                      }, // end onSubmit
                    ),
                  ),
                  // SizedBox(height: 10),
                  CountdownTimer(
                    textStyle: TextStyle(color: Colors.white),
                    endTime: endTime,
                    // textStyle: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Didn't receive the code?",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w100,
                        fontSize: 10),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor('#6D29BD'),
                    ),
                    child: const Center(
                      child: Text(
                        'Verify',
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
}
