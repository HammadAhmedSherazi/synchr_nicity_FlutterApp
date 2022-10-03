import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
// import 'package:synchr_nicity/Screens/ChatBoot.dart';
import 'package:synchr_nicity/Screens/ChatScreen.dart';

import 'package:synchr_nicity/Screens/CallRingingScreen.dart';
import 'package:synchr_nicity/Screens/ProfileSettingScreen.dart';
import 'package:synchr_nicity/Screens/AddCardScreen.dart';
import 'package:synchr_nicity/Screens/VideoCallScreen.dart';
import 'package:synchr_nicity/auth/splash-screen.dart';
import 'Components/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/ChatSettingScreen.dart';
import 'Screens/AccountSettingScreen.dart';
import 'Screens/PrivacySettingScreen.dart';
import 'Screens/AddNewCardScreen.dart';
import 'auth/chat-list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
      designSize: const Size(428, 884),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Synchr Nicity',
          theme: ThemeData(
            primarySwatch: Palette.kToDark,
            primaryColor: kPrimaryColor,
            textTheme: GoogleFonts.poppinsTextTheme(),
           
          ),
           initialRoute: '/splash',
           getPages: [
             GetPage(name: '/splash', page: () => splashScreen() ),
           ],
          // home: child,
        );
      },
      // child: SettingScreen(),
    );
  }
}



