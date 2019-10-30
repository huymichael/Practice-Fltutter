import 'package:destini/model/story_brain.model.dart';
import 'package:flutter/material.dart';

StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
      child: Center(
        child: Text(
          storyBrain.getStory(),
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
