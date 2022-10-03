import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(
        //   widget.title,
        //   style: TextStyle(color: Colors.black),
        // ),
        leading: IconButton(
          onPressed: (){}, 
          icon: Image.asset('assets/images/Icon ionic-ios-arrow-back.png')
          ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Mask Group 21.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 182.sp,
              right: 21.sp,
              child: Container(
                width: 123.w,
                height: 164.h,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(3.0),
                  image: DecorationImage(image: AssetImage('assets/images/Mask Group 22.jpg'),
                  fit: BoxFit.cover
                  )
                ),
              ) 
              ),
              Positioned(
                bottom: 10.93.sp,
                left: 86.97.sp,
                right: 86.97.sp,
                child: Container(
                  width: 254.07.w,
               
                  child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/Group 1159.png', scale: 1.3),
                         Container(
                          height:164.h,
                          padding: EdgeInsets.only(bottom: 80.03.sp),
                          // width: 67.8.w,
                          child: Image.asset('assets/images/Group 1156@3x.png', )
                          ),
                          Image.asset('assets/images/Group 1160.png', scale: 1.3,)
                        ],
                      ),
                )
                ),
                Positioned(
                  bottom: 4,
                  left: 148.sp,
                  right: 147.sp,
                  child: Image.asset('assets/images/Home Indicator.png')
                )
          ]
          ) /* add child content here */,
      ),
    );
  }
}