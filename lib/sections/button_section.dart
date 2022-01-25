import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {

  Widget headerButton({required String buttonText,
  required IconData buttonIcon,
  required void Function() buttonAction,
  required Color buttoncolor}){
    return  FlatButton.icon(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: buttoncolor,
        ),
        label: Text(buttonText));

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(buttonText: "Live",
              buttonIcon: Icons.video_call,
              buttonAction: (){},
              buttoncolor: Colors.red ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          headerButton(buttonText: "Photos",
              buttonIcon: Icons.video_call,
              buttonAction: (){},
              buttoncolor: Colors.green ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          headerButton(buttonText: "Room",
              buttonIcon: Icons.video_call,
              buttonAction: (){},
              buttoncolor: Colors.purple ),
        ],
      ),
    );
  }
}
