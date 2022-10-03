import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:synchr_nicity/Components/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:synchr_nicity/model/MessageBoxModels.dart';
import 'package:synchr_nicity/model/MessageDetail.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/Group 1140.png'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Julian Dasliva",
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        // SizedBox(height: 6,),
                        Text(
                          "Online",
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.sp),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Image.asset('assets/images/Group 1153.png')),
                      SizedBox(
                        width: 8.0,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Image.asset('assets/images/Group 1152.png')),
                      SizedBox(
                        width: 8.0,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Image.asset(
                              'assets/images/Iconly-Bold-More Circle.png')),
                    ],
                  ),
                ],
              )),
        ),
      ),
      body: Stack(children: [
        
          // height: (MediaQuery.of(context).size.height) - 82.h,
           Container(
          height: (MediaQuery.of(context).size.height) - 82.h,

             child: ListView.builder(
               shrinkWrap: true,
              padding: EdgeInsets.only(top: 10,bottom: 80),
                 
                itemCount: demoChatMessage.length ,
                itemBuilder: (context, index) =>
                Message(
                  message : demoChatMessage[index]
                )),
           ),
    
        Positioned(
            bottom: 0,
            child: Container(
              height: 82.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: kSecondaryColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TextField(
                  //     decoration: InputDecoration(
                  //        prefixIcon: Icon(Icons.search),
                  //   border: InputBorder.none,
                  //     ),
                  // )
                  Container(
                    width: 325.w,
                    height: 54.h,
                    decoration: BoxDecoration(
                        color: kTextBgColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          filled: true,
                          // fillColor: Colors.white70,
                          border: InputBorder.none,
                          // label: Text('dsdsf'),
                          // hintText: 'Type to start chat',
                          contentPadding: EdgeInsets.only(
                            bottom: 8,
                          ),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/Icon feather-smile.png',
                              scale: 1,
                            ),
                            iconSize: 5,
                          ),
                          // suffixIcon: Icon(
                          //   Icons.camera_alt_sharp
                          // ),
                          hintText: 'Type to start chat',
                          hintStyle: TextStyle(
                            fontSize: 18.sp,
                          ),
                          // hintTextDirection: TextDirection.ltr
                          suffixIcon: Container(
                            width: 75.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 23.w,
                                    height: 23.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Color(0xff858DA1),
                                    ),
                                    child: Icon(
                                      Icons.more_horiz,
                                      size: 15.0,
                                      color: kSecondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    // padding: EdgeInsets.only(bottom: 7),
                                    width: 23.w,
                                    height: 23.h,

                                    child: Icon(
                                      Icons.camera_alt,
                                      size: 25.4.sp,
                                      color: Color(0xff858DA1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 55.w,
                    height: 54.h,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                        child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.microphone),
                            color: Colors.white,
                            iconSize: 25.sp,
                            onPressed: () {})),
                  )
                ],
              ),
            ))
      ]),
    );
  }
}
 