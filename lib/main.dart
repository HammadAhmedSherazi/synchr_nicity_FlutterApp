import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:synchr_nicity/Screens/ChatBoot.dart';
import 'package:synchr_nicity/Screens/ChatScreen.dart';
import 'package:synchr_nicity/Screens/Screen12.dart';
import 'package:synchr_nicity/Screens/Screen13.dart';
import 'package:synchr_nicity/Screens/Screen14.dart';
import 'package:synchr_nicity/Screens/Screen18.dart';
import 'Components/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/Screen15.dart';
import 'Screens/Screen16.dart';
import 'Screens/Screen17.dart';
import 'Screens/Screen19.dart';
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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Palette.kToDark,
            primaryColor: kPrimaryColor,
            // textTheme:Theme.of(context).textTheme.apply(bodyColor: Colors.white),
            textTheme: GoogleFonts.poppinsTextTheme(),
            // textTheme: TextTheme(
            //   bodyText1: TextStyle(
            //     color: Colors.white,
            //   )
            // ),
            
            
            
            
            
          
          ),
          home: child,
        );
      },
      child: AddNewCardScreen(),
    );
  }
}



