import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatSettingScreen extends StatefulWidget {
  const ChatSettingScreen({super.key});

  @override
  State<ChatSettingScreen> createState() => _ChatSettingScreenState();
}

class _ChatSettingScreenState extends State<ChatSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Image.asset('assets/images/Group 1140.png')),
        title: Text('Chat Settings', style: TextStyle(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.w600),),
        centerTitle: true,
        backgroundColor: Color(0xff1E0C55),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          color: Color(0xff1E0C55),
          child: Stack(
            children: [
              ListView(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              children: [
                
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 12),
                //   child: Divider(
                //     thickness: 0.4,
                //     color: Colors.white,
                //   ),
                // ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Export Chat', ""),
                ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Clear Chats', ''),
                ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Save Media', 'Default'),
                ),
 
              
              ]
              ),
              Positioned(
                  bottom: 4,
                  left: 148.sp,
                  right: 147.sp,
                  child: Image.asset('assets/images/Home Indicator.png')
                )
          
            ],
          ),
            ) 
      ),
    );
  }

  Container SettingMenuBox(String txt, String txt2) {
    return Container(
              width: 386.w,
              height: 53.h,
              margin: EdgeInsets.only(bottom: 8),
              padding: EdgeInsets.symmetric(horizontal: 33.sp),
              decoration: BoxDecoration(
                color: Color(0xff040329),
                borderRadius: BorderRadius.circular(12.sp)
              ),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(txt, style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp
                  ),),
                  Text(txt2, style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff6D29BD)
                  ),)
                  ,
                ],
              ),

            );
  
  }
}