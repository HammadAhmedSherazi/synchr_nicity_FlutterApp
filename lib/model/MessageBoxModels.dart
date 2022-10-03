import 'package:flutter/material.dart';
import 'package:synchr_nicity/Components/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:synchr_nicity/model/MessageDetail.dart';

class Message extends StatelessWidget {
  const Message({Key? key, required this.message});

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage();
          break;
        case ChatMessageType.audio:
          return AudioMessage();
          break;
        case ChatMessageType.image:
          return ImageMessage();
          break;
        case ChatMessageType.video:
          return VideoMessage();
          break;
      }
    }

    return Container(
      padding: EdgeInsets.only(left: 27, right: 27, top: 10, bottom: 10),
      child: Align(
        alignment: (message.isSender ? Alignment.topRight : Alignment.topLeft),
        child: messageContaint(message),
        // child: TextMessage(),
      ),
    );
  }

// Simple Text Message
  Widget TextMessage() {
    String time = message.time;
    return Container(
      width: 185.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: (message.isSender ? kTextBgColor : kPrimaryColor),
      ),
      padding: EdgeInsets.only(top: 5, left: 8, bottom: 5, right: 8),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                message.text,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 16.sp,
                    color: message.isSender ? Color(0xff3A3A3A) : Colors.white),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              message.isSender
                  ? Text(
                      message.messageStatus == MessageStatus.not_sent
                          ? "Not Deliverd • $time"
                          : ((message.messageStatus == MessageStatus.viewed
                              ? "Seen • 11:32 AM"
                              : "Deliverd • $time")),
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontSize: 12.sp, color: Color(0xff3A3A3A)),
                    )
                  : Text(
                      "$time",
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 12.sp, color: Colors.white),
                    )
            ],
          ),
        ],
      ),
    );
    //Text Message Field Ends
  }

//Audio Message Field Starts
  Widget AudioMessage() {
    String time = message.time;
    return Container(
      width: 185.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: (message.isSender ? kTextBgColor : kPrimaryColor),
      ),
      padding: EdgeInsets.only(top: 5, left: 8, bottom: 5, right: 8),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.play_arrow,
                  color: message.isSender ? Color(0xff3A3A3A) : Colors.white,
                ),
              ),
              Expanded(
                  child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                    Container(
                      margin: EdgeInsets.only(right: 3.0),
                      width: double.infinity,
                      height: 2,
                      color:
                          message.isSender ? Color(0xff3A3A3A) : Colors.white,
                    ),
                    Positioned(
                        left: 0,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: message.isSender
                                  ? Color(0xff3A3A3A)
                                  : Colors.white),
                        ))
                  ])),
              Text(
                "0.37",
                style: TextStyle(
                    color: message.isSender ? Color(0xff3A3A3A) : Colors.white,
                    fontSize: 14.sp),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              message.isSender
                  ? Text(
                      message.messageStatus == MessageStatus.not_sent
                          ? "Not Deliverd • $time"
                          : ((message.messageStatus == MessageStatus.viewed
                              ? "Seen • 11:32 AM"
                              : "Deliverd • $time")),
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontSize: 12.sp, color: Color(0xff3A3A3A)),
                    )
                  : Text(
                      "$time",
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 12.sp, color: Colors.white),
                    )
            ],
          ),
        ],
      ),
    );
  }
  //Audio Message Structure End

  // Image Message
  Widget ImageMessage() {
    String time = message.time;
    return Container(
      width: 185.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: (message.isSender ? kTextBgColor : kPrimaryColor),
      ),
      padding: EdgeInsets.only(top: 5, left: 8, bottom: 5, right: 2),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 167.w,
                height: 169.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image:
                        DecorationImage(image: AssetImage(message.ImageUrl))),
              )
            ],
          ),
          message.text == ""
              ? Row()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      message.text,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: message.isSender
                              ? Color(0xff3A3A3A)
                              : Colors.white),
                    )
                  ],
                ),
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                message.isSender
                    ? Text(
                        message.messageStatus == MessageStatus.not_sent
                            ? "Not Deliverd • $time"
                            : ((message.messageStatus == MessageStatus.viewed
                                ? "Seen • 11:32 AM"
                                : "Deliverd • $time")),
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 12.sp, color: Color(0xff3A3A3A)),
                      )
                    : Text(
                        "$time",
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 12.sp, color: Colors.white),
                      )
              ],
            ),
          ),
        ],
      ),
    );
    //Image Message Field Ends
  }

  //Video Message
  Widget VideoMessage() {
    String time = message.time;
    return Container(
      width: 185.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: (message.isSender ? kTextBgColor : kPrimaryColor),
      ),
      padding: EdgeInsets.only(bottom: 5),
      child: Column(
        children: [
          Container(
              width: 185.w,
              height: 169.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(message.ImageUrl), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(13)),
              child: Center(
                child: Container(
                  width: 60.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 3,
                          color:
                              message.isSender ? kTextBgColor : kPrimaryColor)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow_sharp,
                      color: message.isSender ? kTextBgColor : kPrimaryColor,
                      size: 37.sp,
                    ),
                  ),
                ),
              )),
          message.text == ''
              ? Row()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Text(
                        message.text,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: message.isSender
                                ? Color(0xff3A3A3A)
                                : Colors.white),
                      ),
                    )
                  ],
                ),
          Padding(
            padding: const EdgeInsets.only(right: 6, top: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                message.isSender
                    ? Text(
                        message.messageStatus == MessageStatus.not_sent
                            ? "Not Deliverd • $time"
                            : ((message.messageStatus == MessageStatus.viewed
                                ? "Seen • $time"
                                : "Deliverd • $time")),
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 12.sp, color: Color(0xff3A3A3A)),
                      )
                    : Text(
                        "$time",
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 12.sp, color: Colors.white),
                      )
              ],
            ),
          ),
        ],
      ),
    );
    //Video Message Field Ends
  }
}
