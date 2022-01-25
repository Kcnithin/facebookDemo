import 'package:fb_demo/sections/comment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FooterSectionClass extends StatefulWidget {


  @override
  _ButtonCalculateState createState() => new _ButtonCalculateState();
}

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
class _ButtonCalculateState extends State<FooterSectionClass> {

  var pressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(buttonText: "Like",
              buttonIcon: Icons.thumb_up,
              buttonAction: (){
                setState((){
                  pressed = !pressed ; // update the state of the class to show color change
                });
              },
              buttoncolor: pressed ? Colors.blue : Colors.grey,),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          headerButton(buttonText: "Comment",
              buttonIcon: Icons.comment,
              buttonAction: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Comment()));
              },
              buttoncolor: Colors.grey ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          headerButton(buttonText: "Share",
              buttonIcon: Icons.share,
              buttonAction: (){

              },
              buttoncolor: Colors.grey),

        ],
      ),
    );
  }
}
