import 'package:flutter/material.dart';

class Avathar extends StatelessWidget {
  late final String displayImage;
  late final bool displayIndicator;
  late final bool displayBorder;
  late final double width;
  late final double height;

  Avathar({
    required this.displayImage,
    required this.displayIndicator,
    this.width = 50,
    this.height = 50,
  this.displayBorder = false
  });

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;
    if(displayIndicator == true){
      statusIndicator = Positioned(
        bottom: 1,
        right: 1,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
          ),
        ),
      );
    }else{
      statusIndicator = SizedBox();//to show dummy widget we can use sized widget
    }

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder? Border.all(
              color: Colors.blueAccent,
              width: 3
            ) : Border(),
          ),
          padding: EdgeInsets.only(left: 4,right: 4),
          child:  ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              width: width,
              height: height,
            ),
          ),
        ),
        statusIndicator
      ],
    );
  }
}
