import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacySettingScreen extends StatefulWidget {
  const PrivacySettingScreen({super.key});

  @override
  State<PrivacySettingScreen> createState() => _PrivacySettingScreenState();
}

class _PrivacySettingScreenState extends State<PrivacySettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Image.asset('assets/images/Group 1140.png')),
        title: Text('Privacy Setting', style: TextStyle(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.w600),),
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
                  child: SettingMenuBox('Privacy Setting', "Everyone"),
                ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Privacy Settings', ''),
                ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Blocking', ''),
                ),
                 InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Read Receipts', ''),
                ),
                 InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Backup Account', ''),
                ),
                 InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Delete Account', ''),
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
                    color: txt == 'Delete Account' ? Color(0xff6D29BD) : Colors.white,
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