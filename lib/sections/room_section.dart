import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets.dart';
import 'avatar.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
           roomButton(),
          Avathar(displayImage: virat,displayIndicator: true),
          Avathar(displayImage: dulquer,displayIndicator: true),
          Avathar(displayImage: vineeth,displayIndicator: true),
          Avathar(displayImage: boom,displayIndicator: true),
          Avathar(displayImage: pant,displayIndicator: true),
          Avathar(displayImage: fahad,displayIndicator: true),

        ],
      ),
    );
  }
}

 Widget roomButton() {
  return  Container(
    padding: EdgeInsets.only(left: 5,right: 5),
    child: OutlineButton.icon(
      shape: StadiumBorder(),
      borderSide: BorderSide(
        color: Colors.blue,
        width: 2,
      ),
      onPressed: () {},
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text(
        "Create \nRoom",
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
    ),
  );
}
