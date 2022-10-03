import 'package:flutter/material.dart';
import 'package:synchr_nicity/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'package:synchr_nicity/card-view.dart';
import 'package:swipeable_card_stack/swipe_controller.dart';
import 'package:synchr_nicity/custom_icon_icons.dart';
import 'package:toggle_switch/toggle_switch.dart';

class select extends StatefulWidget {
  const select({Key? key}) : super(key: key);

  @override
  State<select> createState() => _selectState();
}

class _selectState extends State<select> {
  int counter = 4;
  @override
  Widget build(BuildContext context) {
    //create a CardController
    SwipeableCardSectionController _cardController =
        SwipeableCardSectionController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor("#6D29BD"),
                  ),
                  child:
                      Icon(Icons.person, color: HexColor("#ffffff"), size: 20),
                ),
                ToggleSwitch(
                  minWidth: 40,
                  minHeight: 25.0,
                  cornerRadius: 30,
                  activeBgColors: [
                    [HexColor("#ffffff")!],
                    [HexColor("#ffffff")!],
                  ],

                  activeFgColor: HexColor("#6D29BD"),
                  inactiveBgColor: HexColor("#E2E2E2"),
                  inactiveFgColor: HexColor("#B7B7B7"),
                  initialLabelIndex: 1,
                  totalSwitches: 2,
                  // labels: ['True', 'False'],
                  labels: ['', ''],

                  icons: [CustomIcon.stars_logo, CustomIcon.iconly_bold_search],
                  iconSize: 60.0,
                  borderWidth: 2.0,
                  borderColor: [HexColor("#E2E2E2")],
                  radiusStyle: true,
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor("#6D29BD"),
                  ),
                  child: Icon(Icons.mark_chat_unread,
                      color: HexColor("#ffffff"), size: 16),
                ),
              ],
            ),
          ),
          SwipeableCardsSection(
            cardController: _cardController,
            context: context,
            //add the first 3 cards
            items: [
              CardView(text: "First card"),
              CardView(text: "Second card"),
              CardView(text: "Third card"),
            ],
            onCardSwiped: (dir, index, widget) {
              //Add the next card
              if (counter <= 20) {
                _cardController.addItem(CardView(text: "Card $counter"));
                counter++;
              }

              if (dir == Direction.left) {
                print('onDisliked ${(widget as CardView).text} $index');
              } else if (dir == Direction.right) {
                print('onLiked ${(widget as CardView).text} $index');
              } else if (dir == Direction.up) {
                print('onUp ${(widget as CardView).text} $index');
              } else if (dir == Direction.down) {
                print('onDown ${(widget as CardView).text} $index');
              } else if (dir == Direction.down) {
                print('onDown ${(widget as CardView).text} $index');
              }
            },
            enableSwipeUp: true,
            enableSwipeDown: true,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  child:
                      Icon(Icons.refresh, color: HexColor("#F4BD20"), size: 34),
                  onPressed: () => _cardController.triggerSwipeLeft(),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  child:
                      Icon(Icons.close, color: HexColor("#6D29BD"), size: 34),
                  onPressed: () => _cardController.triggerSwipeRight(),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.star, color: HexColor("#A8AEF0"), size: 34),
                  onPressed: () => _cardController.triggerSwipeUp(),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.favorite,
                      color: HexColor("#6D29BD"), size: 34),
                  onPressed: () => _cardController.triggerSwipeDown(),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.bolt, color: HexColor("#576898"), size: 34),
                  onPressed: () => _cardController.triggerSwipeDown(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
