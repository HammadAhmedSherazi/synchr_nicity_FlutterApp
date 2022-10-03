import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Image.asset('assets/images/Group 1140.png')),
        title: Text('Settings', style: TextStyle(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.w600),),
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
                Container(
                  width: 386.w,
                  height: 92.h,
                  decoration: BoxDecoration(
                    color: Color(0xff6D29BD),
                    borderRadius: BorderRadius.circular(12.sp)
                  ),
                  child: Container(
                      padding: EdgeInsets.only(left: 25.sp),
                      
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: Image(
                            image:  AssetImage('assets/images/MaskGroup7.png')),
                            radius: 30,
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Text('Jenny Josef', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 28.sp),),
                      ],
                    )
                    ),
                    
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Divider(
                    thickness: 0.4,
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Chats'),
                ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Account Settings'),
                ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Notifications'),
                ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Your Cards'),
                ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Help'),
                ),
                InkWell(
                  onTap: (){},
                  child: SettingMenuBox('Tell a Friend'),
                ),
                
                
                
                
                
                InkWell(
                  onTap: (){},
                  child: Container(
                  width: 386.w,
                  height: 53.h,
                  margin: EdgeInsets.only(bottom: 8),
                  padding: EdgeInsets.only(left: 33.sp),
                  decoration: BoxDecoration(
                    color: Color(0xff6D29BD),
                    borderRadius: BorderRadius.circular(12.sp)
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text('Log out', style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp
                  ),),
                          
                              ),
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
                color: Colors.white,
                fontSize: 16.sp
              ),),

            );
  
  }
}