import 'package:fb_demo/blue_tick.dart';
import 'package:fb_demo/sections/avatar.dart';
import 'package:fb_demo/sections/footer_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  late final String avatar;
  late final String time;
  late final String postTitle;
  late final String postImage;
  late final String likeCount;
  late final String shareCount;
  late final String commentCount;
  late final bool showBlueTick;
  late final String name;

  PostCard({
    required this.avatar,
    required this.time,
    required this.postTitle,
    required this.postImage,
    required this.likeCount,
    required this.shareCount,
    required this.commentCount,
    required this.name,
    this.showBlueTick = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          ImageSection(),
          FooterSection(),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          FooterSectionClass(),
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avathar(
        displayImage: avatar,
        displayIndicator: false,
        displayBorder: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox() // ? true : false
        ],
      ),
      subtitle: Row(
        children: [
          Text(time == null ? "" : time),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.more_horiz),
        color: Colors.grey[700],
      ),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 5, left: 10, right: 10),
            child: Text(
              postTitle == null ? "" : postTitle,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          )
        : SizedBox();
  }

  Widget ImageSection() {
    return Container(
        padding: EdgeInsets.only(bottom: 5, top: 5),
        child: Image.asset(postImage,fit: BoxFit.fill,));
  }

  Widget FooterSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                  width: 15,
                  height: 15,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                ),
                SizedBox(
                  width: 5,
                ),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                displayText(label: "Comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(label: shareCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Shares"),
                SizedBox(
                  width: 10,
                ),
                Avathar(
                  displayImage: avatar,
                  displayIndicator: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }
}
