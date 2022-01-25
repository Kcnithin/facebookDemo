import 'package:flutter/material.dart';

import '../app_bar_widgets.dart';
import '../search.dart';

class Comment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Facebook",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          leading: IconButton(color: Colors.black,onPressed: (){
            Navigator.of(context).pop();
          },icon: Icon(Icons.arrow_back),),
        ),
        body: Container(
           padding: EdgeInsets.only(top: 5, bottom: 1),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Write Your Comment Here",
               suffixIcon: Icon(Icons.send),
                ),
              ),
            )),
      ),
    );
  }

}
