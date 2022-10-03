import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:synchr_nicity/Components/constant.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({super.key});

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Image.asset('assets/images/Group 1140.png')),
        title: Text('Add New Card', style: TextStyle(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.w600),),
        centerTitle: true,
       
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
     
          child: Stack(
            children: [
              ListView(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              children: [
               //FirstInputField
                Padding(
                  padding: const EdgeInsets.only(bottom: 11.0),
                  child: Container(
                    width: 384.w,
                    height: 53.h,
                    padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 26.sp),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xffB7B7B7)
                      ),
                      borderRadius: BorderRadius.circular(12.sp)
                    ),
                    child: TextField(
                      
                      decoration: InputDecoration(
                        hintText: 'Card Number',
                        hintStyle: TextStyle(
                          color: Color(0xffB7B7B7),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold
                        ),
                        
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 11.8.sp)
                       
                        ),

                    ),
                  ),
                ),
                
              //SecondInputField
              Padding(
                  padding: const EdgeInsets.only(bottom: 11.0),
                  child: Container(
                    width: 384.w,
                    height: 53.h,
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 189.w,
                           padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 26.sp),
                           decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xffB7B7B7)
                      ),
                      borderRadius: BorderRadius.circular(12.sp)
                    ),
                          child: TextField(
                            
                            decoration: InputDecoration(
                              hintText: 'Expiry',
                              hintStyle: TextStyle(
                                color: Color(0xffB7B7B7),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold
                              ),
                              
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(vertical: 11.8.sp)
                             
                              ),

                          ),
                        ),

                        Container(
                          width: 189.w,
                           padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 26.sp),
                           decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xffB7B7B7)
                      ),
                      borderRadius: BorderRadius.circular(12.sp)
                    ),
                          child: TextField(
                            
                            decoration: InputDecoration(
                              hintText: 'CVC',
                              hintStyle: TextStyle(
                                color: Color(0xffB7B7B7),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold
                              ),
                              
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(vertical: 11.8.sp)
                             
                              ),

                          ),
                        ),
                      
                      ],
                    ),
                  ),
                ),
                
                //ThirdInputField
                Padding(
                  padding: const EdgeInsets.only(bottom: 11.0),
                  child: Container(
                    width: 384.w,
                    height: 53.h,
                    padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 26.sp),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xffB7B7B7)
                      ),
                      borderRadius: BorderRadius.circular(12.sp)
                    ),
                    child: TextField(
                      
                      decoration: InputDecoration(
                        hintText: 'Name on the card',
                        hintStyle: TextStyle(
                          color: Color(0xffB7B7B7),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold
                        ),
                        
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 11.8.sp)
                       
                        ),

                    ),
                  ),
                ),
                
                //SelectDongle
                Padding(
                  padding: const EdgeInsets.only(bottom: 11.0),
                  child: Container(
                    width: 384.w,
                    height: 42.h,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 26.sp),
                    decoration: BoxDecoration(
                       color: kSecondaryColor,
                      
                      borderRadius: BorderRadius.circular(6.sp)
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Set this card as default', style: TextStyle(
                            color: Color(0xff919191),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold
                          ),),
                          Transform.scale(
                            scale: 0.5,
                          
                            child: CupertinoSwitch(
                              value: true,
                              onChanged: (bool value) {  },
                              activeColor: kPrimaryColor, 
                              thumbColor: kSecondaryColor, 
                              trackColor: kPrimaryColor,)
                            
                          )
                        ],
                    )

                    ),
                  ),
                  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Divider(
                    thickness: 0.8,
                    color: kSecondaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:16, right:17, bottom: 30),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 9),
                        child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Color(0xffB7B7B7)
                        ),),
                      ),
                    Positioned(
                      top: 0,
                      left: 0,
                      
                      child:Text('*', style: TextStyle(
                          color: Color(0xffB7B7B7),
                          fontSize: 15.sp,
                        ),),)
              ]),
                ),
                
                
                
                InkWell(
                  onTap: (){},
                  child: Container(
                  width: 386.w,
                  height: 65 .h,
                  margin: EdgeInsets.only(bottom: 8),
                  // padding: EdgeInsets.only(left: 33.sp),
                  decoration: BoxDecoration(
                    color: Color(0xff6D29BD),
                    borderRadius: BorderRadius.circular(12.sp)
                  ),
                  alignment: Alignment.center,
                  child: Text('Add Card', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp
                  ),),
                          
                              ),
                ),
            
              
              ]
              ),
              Positioned(
                  bottom: 4,
                  left: 148.sp,
                  right: 147.sp,
                  child: Image.asset('assets/images/Home Indicator.png', color: Colors.black,)
                )
          
            ],
          ),
            ) 
      ),
    );
  }

  // Container SettingMenuBox(String txt) {
    // return Container(
    //           width: 386.w,
    //           height: 53.h,
    //           margin: EdgeInsets.only(bottom: 8),
    //           padding: EdgeInsets.only(left: 33.sp),
    //           decoration: BoxDecoration(
    //             color: Color(0xff040329),
    //             borderRadius: BorderRadius.circular(12.sp)
    //           ),
    //           alignment: Alignment.centerLeft,
    //           child: Text(txt, style: TextStyle(
    //             color: Colors.white,
    //             fontSize: 16.sp
    //           ),),

    //         );
  
  // }
}