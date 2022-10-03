import 'package:synchr_nicity/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginSignUpPage extends StatelessWidget {
  const LoginSignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    // final UrlImage = 'assets/images/01-splash.jpg';

    return Container(
      decoration: const BoxDecoration(gradient: mycolor),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 120,
                ),
                Container(
                  width: 280,
                  height: 200,
                  child: SvgPicture.asset(
                    'assets/images/bg-star.svg',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  width: 300,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: HexColor('#6D29BD'),
                  ),
                  child: const Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ),
                ),
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
                      height: 60,
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
    );
  }
}
