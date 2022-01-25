import 'package:fb_demo/app_bar_widgets.dart';
import 'package:fb_demo/assets.dart';
import 'package:fb_demo/post_card.dart';
import 'package:fb_demo/sections/button_section.dart';
import 'package:fb_demo/sections/room_section.dart';
import 'package:fb_demo/sections/status_section.dart';
import 'package:fb_demo/sections/story_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../log_in.dart';

class Main extends StatelessWidget {

  DateTime pre_backpress = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        final timegap = DateTime.now().difference(pre_backpress);
        final cantExit = timegap >= Duration(seconds: 2);
        pre_backpress = DateTime.now();
        if(cantExit){
          //show snackbar
          final snack = SnackBar(content: Text('Press Back button again to Exit'),duration: Duration(seconds: 2),);
          ScaffoldMessenger.of(context).showSnackBar(snack);
          return false;
        }else{
          return true;
        }
      },
      child: Scaffold(
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
          leading: IconButton(
            color: Colors.black,
            onPressed: () {
              SystemNavigator.pop();
            },
            icon: Icon(Icons.arrow_back),
          ),
          actions: [
            AppBarWidgets(buttonAction: () {}, buttonIcon: Icons.search),
            AppBarWidgets(
                buttonAction: () async {
                  final sharedPreferences = await SharedPreferences.getInstance();
                  sharedPreferences.remove('username');
                  Navigator.pop(context, true);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LogIn()),
                  );
                },
                buttonIcon: Icons.logout)
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            ButtonSection(),
            Divider(
              thickness: 5,
              color: Colors.grey[300],
            ),
            RoomSection(),
            Divider(
              thickness: 5,
              color: Colors.grey[300],
            ),
            Story(),
            Divider(
              thickness: 5,
              color: Colors.grey[300],
            ),
            PostCard(
              name: "Virat",
              avatar: virat,
              time: "Just now",
              postImage: virat,
              postTitle: "",
              showBlueTick: true,
              likeCount: "160K",
              commentCount: "10K",
              shareCount: "185K",
            ),
            Divider(
              thickness: 5,
              color: Colors.grey[300],
            ),
            PostCard(
              name: "Fahad",
              avatar: fahad,
              time: "10hr",
              postImage: fahad,
              postTitle: "",
              showBlueTick: true,
              likeCount: "10K",
              commentCount: "3K",
              shareCount: "1.2K",
            ),
            Divider(
              thickness: 5,
              color: Colors.grey[300],
            ),
            PostCard(
              name: "Vineeth",
              avatar: vineeth,
              time: "15hr",
              postImage: vineeth,
              postTitle: "",
              showBlueTick: true,
              likeCount: "15.4K",
              commentCount: "1K",
              shareCount: "1K",
            ),
            Divider(
              thickness: 5,
              color: Colors.grey[300],
            ),
            PostCard(
              name: "Bhumrah",
              avatar: boom,
              time: "18hr",
              postImage: boom,
              postTitle: "",
              showBlueTick: true,
              likeCount: "108K",
              commentCount: "16K",
              shareCount: "21K",
            ),
            Divider(
              thickness: 5,
              color: Colors.grey[300],
            ),
            PostCard(
              name: "Pant",
              avatar: pant,
              time: "jan 23",
              postImage: pant,
              postTitle: "",
              showBlueTick: true,
              likeCount: "106K",
              commentCount: "51K",
              shareCount: "81K",
            ),
            Divider(
              thickness: 5,
              color: Colors.grey[300],
            ),
            PostCard(
              name: "Dulquer",
              avatar: dulquer,
              time: "jan 1",
              postImage: new_year,
              postTitle: "Happy New Year",
              showBlueTick: true,
              likeCount: "19K",
              commentCount: "12.3K",
              shareCount: "11K",
            ),
          ],
        ),
      ),
    );
  }
}
