import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Image.asset('assets/images/Group 1140.png')),
        
        title: Row(
          
          children: [
            Container(
              width: 250.w,
              alignment: Alignment.center,
              child: Text('My Cards', style: TextStyle(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.w600),)
              ),
   
            Text('Add Card', style: TextStyle(color: Colors.white, fontSize: 16.sp),)
          ],
        ),
        centerTitle: true,
        // backgroundColor: Color(0xff#6D29BD),
       
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          
          child: Stack(
            children: [
              ListView(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              children: [
                Container(
                  width: 386.w,
                  height: 197.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Group 1199.jpg') ,
                      fit: BoxFit.cover
                      )
                  ),
                )
                
              ]
              ),
              Positioned(
                  bottom: 4,
                  left: 148.sp,
                  right: 147.sp,
                  child: Image.asset('assets/images/Home Indicator.png',color: Colors.black,)
                  
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