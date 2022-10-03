import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CardView extends StatelessWidget {
  const CardView({
    Key? key,
    this.text = "Card View",
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              child: Container(
                height: 20,
                // color: Colors.blueAccent,
                child: Image.asset(
                  'assets/images/MaskGroup19.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.transparent, Colors.black54],
                      begin: Alignment.center,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Text("Jeanette",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26.0,
                                fontWeight: FontWeight.w600)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Text("26",
                              style: TextStyle(
                                  color: HexColor("#919191"),
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.normal)),
                        ),
                        Icon(
                          Icons.check_circle_rounded,
                          color: HexColor("#6D29BD"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.photo_camera,
                          color: HexColor("#ffffff"),
                          size: 16,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text("Product Designer",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.school,
                          color: HexColor("#ffffff"),
                          size: 16,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text("University of Southern California",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.my_location,
                          color: HexColor("#ffffff"),
                          size: 16,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text("2 miles away",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
