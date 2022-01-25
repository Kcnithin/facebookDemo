import 'package:fb_demo/app_bar_widgets.dart';
import 'package:fb_demo/sections/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  late final String labelText;
  late final String story;
  late final String avatar;
  late final bool createStoryStatus;
  late final bool displayBorder;

  StoryCard(
      {required this.labelText,
      required this.story,
      required this.avatar,
      this.createStoryStatus = false,
      this.displayBorder = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(story),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? AppBarWidgets(
                    buttonAction: () {},
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                  )
                : Avathar(
                    displayImage: avatar,
                    displayIndicator: false,
                    displayBorder: displayBorder,
                    width: 35,
                    height: 35,
                  ),
          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                labelText != null ? labelText : "N/A",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
