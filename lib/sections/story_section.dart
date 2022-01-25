import 'package:fb_demo/assets.dart';
import 'package:fb_demo/story_card.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: me,
            story: me,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Virat",
            avatar: virat,
            story: virat,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Fahad",
            avatar: fahad,
            story: fahad,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Dulquer",
            avatar: dulquer,
            story: dulquer,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Vineeth Sreenivasan",
            avatar: vineeth,
            story: vineeth,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Bhumrah",
            avatar: boom,
            story: boom,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Pant",
            avatar: pant,
            story: pant,
            createStoryStatus: false,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
