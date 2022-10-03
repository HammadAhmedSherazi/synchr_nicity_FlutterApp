import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:synchr_nicity/Components/constant.dart';

class RingScreen extends StatefulWidget {
  const RingScreen({super.key});

  @override
  State<RingScreen> createState() => _RingScreenState();
}

class _RingScreenState extends State<RingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Julian Dasliva'
              ,
              style: TextStyle(color: Colors.white, fontSize: 20.sp),
            ),
            Padding(
              // padding: const EdgeInsets.symmetric(vertical: 9),
              padding: EdgeInsets.only( bottom: 10, top: 3),
              child: Text('RINGING',
                style: TextStyle(color: Colors.white, fontSize: 16.sp),),
            )
          ],
        ),
        // automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        elevation: 0.0,
      ),
      // extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Container(
        // height: 643.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Mask Group 21.jpg"),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter
          ),
        ),
        child: 
        Stack(
            children: [
           
                Positioned(
                  bottom: 0,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 100.h,
                          margin: EdgeInsets.symmetric(vertical: 25),
                          width: 428.w,
                          child: Image.asset('assets/images/Group 1156@3x.png'),
                          // color: kPrimaryColor,
                        ),
                      ),
                      Container(
                        height: 100.h,
                        width: 428.w,
                        alignment: Alignment.center,
                        color: kPrimaryColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 320.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: (){},
                                    child: Image.asset('assets/images/Icon ionic-md-volume-high.png', scale: 1.6,)),
                                  InkWell(
                                    onTap: (){},
                                    child: Icon(
                                      Icons.videocam,
                                      color: Colors.white,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){},
                                    child: Image.asset('assets/images/Icon feather-mic-off.png', scale: 1.6,))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/Home Indicator.png', scale: 1.1,)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                )
          ]
         /* add child content here */,
      ),
        
        ), 
        )
       
      //   
    
    );
  }
}