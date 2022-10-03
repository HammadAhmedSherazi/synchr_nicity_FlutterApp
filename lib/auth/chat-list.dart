// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:list_group/list_group.dart';
import 'package:list_group/list_group_item.dart';
import 'package:synchr_nicity/custom_icon_icons.dart';

class chatList extends StatefulWidget {
  const chatList({Key? key}) : super(key: key);

  @override
  State<chatList> createState() => _chatListState();
}

final List<String> items = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
  'Item5',
  'Item6',
  'Item7',
  'Item8',
];
String? selectedValue;

class _chatListState extends State<chatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_circle_left,
                size: 34,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('Chat'),
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        backgroundColor: HexColor("#6D29BD"),
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: Get.width * 0.72,
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                CustomIcon.iconly_bold_search,
                                color: HexColor("#919191"),
                              ),

                              filled: true, //<-- SEE HERE
                              fillColor: HexColor("#F1F1F1"),
                              hintText: "Search here..",

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              isDense: true,
                              // hintText: 'Enter your email',
                              contentPadding:
                                  EdgeInsets.fromLTRB(14, 10, 14, 10),
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: HexColor("#919191")),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            isExpanded: true,
                            icon: Icon(CustomIcon.filter2),
                            items: items
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 22, 22, 22),
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ))
                                .toList(),
                            value: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value as String;
                              });
                            },
                            iconSize: 20,
                            iconEnabledColor: HexColor("#576898"),
                            iconDisabledColor: Colors.grey,
                            buttonHeight: 48,
                            buttonWidth: 48,
                            buttonPadding:
                                const EdgeInsets.fromLTRB(14, 0, 14, 0),
                            buttonDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: HexColor("#DEE3ED"),
                            ),
                            buttonElevation: 0,
                            itemHeight: 40,
                            itemPadding:
                                const EdgeInsets.only(left: 14, right: 14),
                            dropdownMaxHeight: 200,
                            dropdownWidth: 200,
                            dropdownPadding: null,
                            dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                            dropdownElevation: 4,
                            scrollbarRadius: const Radius.circular(4),
                            scrollbarThickness: 6,
                            scrollbarAlwaysShow: true,
                            offset: const Offset(-20, 0),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            ListGroup(
              items: [
                ListGroupItem(
                  leading: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/MaskGroup7.png')),
                      // borderRadius: BorderRadius.circular(50),
                      // color: Colors.redAccent,
                    ),
                  ),
                  title: Text(
                    'Julian Dasliva',
                    style: TextStyle(
                        fontSize: 20,
                        color: HexColor("#1B0B50"),
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    'Lorem Ipsum is simply dummy...',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, color: HexColor("#B7B7B7")),
                  ),
                  trailing: Column(
                    children: <Widget>[
                      Text(
                        '12:00',
                        style: TextStyle(
                            fontSize: 14,
                            color: HexColor("#919191"),
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor("#6D29BD"),
                          // borderRadius: BorderRadius.circular(50),
                          // color: Colors.redAccent,
                        ),
                        child: Center(
                            child: Text("5",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white))),
                      )
                    ],
                  ),
                ),
                ListGroupItem(
                  leading: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/MaskGroup7.png')),
                      // borderRadius: BorderRadius.circular(50),
                      // color: Colors.redAccent,
                    ),
                  ),
                  title: Text(
                    'Julian Dasliva',
                    style: TextStyle(
                        fontSize: 20,
                        color: HexColor("#1B0B50"),
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    'Lorem Ipsum is simply dummy...',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, color: HexColor("#B7B7B7")),
                  ),
                  trailing: Column(
                    children: <Widget>[
                      Text(
                        '12:00',
                        style: TextStyle(
                            fontSize: 14,
                            color: HexColor("#919191"),
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor("#6D29BD"),
                          // borderRadius: BorderRadius.circular(50),
                          // color: Colors.redAccent,
                        ),
                        child: Center(
                            child: Text("5",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white))),
                      )
                    ],
                  ),
                ),
                ListGroupItem(
                  leading: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/MaskGroup7.png')),
                      // borderRadius: BorderRadius.circular(50),
                      // color: Colors.redAccent,
                    ),
                  ),
                  title: Text(
                    'Julian Dasliva',
                    style: TextStyle(
                        fontSize: 20,
                        color: HexColor("#1B0B50"),
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    'Lorem Ipsum is simply dummy...',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, color: HexColor("#B7B7B7")),
                  ),
                  trailing: Column(
                    children: <Widget>[
                      Text(
                        '12:00',
                        style: TextStyle(
                            fontSize: 14,
                            color: HexColor("#919191"),
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor("#6D29BD"),
                          // borderRadius: BorderRadius.circular(50),
                          // color: Colors.redAccent,
                        ),
                        child: Center(
                            child: Text("5",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white))),
                      )
                    ],
                  ),
                ),
                ListGroupItem(
                  leading: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/MaskGroup7.png')),
                      // borderRadius: BorderRadius.circular(50),
                      // color: Colors.redAccent,
                    ),
                  ),
                  title: Text(
                    'Julian Dasliva',
                    style: TextStyle(
                        fontSize: 20,
                        color: HexColor("#1B0B50"),
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    'Lorem Ipsum is simply dummy...',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, color: HexColor("#B7B7B7")),
                  ),
                  trailing: Column(
                    children: <Widget>[
                      Text(
                        '12:00',
                        style: TextStyle(
                            fontSize: 14,
                            color: HexColor("#919191"),
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor("#6D29BD"),
                          // borderRadius: BorderRadius.circular(50),
                          // color: Colors.redAccent,
                        ),
                        child: Center(
                            child: Text("5",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white))),
                      )
                    ],
                  ),
                ),
                ListGroupItem(
                  leading: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/MaskGroup7.png')),
                      // borderRadius: BorderRadius.circular(50),
                      // color: Colors.redAccent,
                    ),
                  ),
                  title: Text(
                    'Julian Dasliva',
                    style: TextStyle(
                        fontSize: 20,
                        color: HexColor("#1B0B50"),
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    'Lorem Ipsum is simply dummy...',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, color: HexColor("#B7B7B7")),
                  ),
                  trailing: Column(
                    children: <Widget>[
                      Text(
                        '12:00',
                        style: TextStyle(
                            fontSize: 14,
                            color: HexColor("#919191"),
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor("#6D29BD"),
                          // borderRadius: BorderRadius.circular(50),
                          // color: Colors.redAccent,
                        ),
                        child: Center(
                            child: Text("5",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white))),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
