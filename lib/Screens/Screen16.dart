import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountSettingScreen extends StatefulWidget {
  const AccountSettingScreen({super.key});

  @override
  State<AccountSettingScreen> createState() => _AccountSettingScreenState();
}

class _AccountSettingScreenState extends State<AccountSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Image.asset('assets/images/Group 1140.png')),
        title: Text('Account Setting', style: TextStyle(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.w600),),
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
                
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Edit Account'),
                ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Privacy Settings'),
                ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Blocking'),
                ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Read Receipts'),
                ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Backup Account'),
                ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Delete Account'),
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

  Container SettingMenuBox(String txt) {
    return Container(
              width: 386.w,
              height: 53.h,
              margin: EdgeInsets.only(bottom: 8),
              padding: EdgeInsets.only(left: 33.sp),
              decoration: BoxDecoration(
                color: Color(0xff040329),
                borderRadius: BorderRadius.circular(12.sp)
              ),
              alignment: Alignment.centerLeft,
              child: Text(txt, style: TextStyle(
                color: txt == 'Delete Account'?Color(0xff6D29BD):Colors.white,
                fontSize: 16.sp
              ),),

            );
  
  }
}