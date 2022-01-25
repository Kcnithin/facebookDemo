import 'package:fb_demo/assets.dart';
import 'package:fb_demo/sections/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avathar(displayImage: me,displayIndicator: false),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind?",
              hintStyle: TextStyle(
            color: Colors.black
        ),
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
