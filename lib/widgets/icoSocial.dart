import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:flutter/material.dart';

class IcoBTN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              iconSize: 50,
              icon: Icon(
                FontAwesome5.facebook_square,
                color: Color(0xFFF4267b2),
              ),
              onPressed: null),
          IconButton(
              iconSize: 50,
              icon: Icon(
                FontAwesome5.behance_square,
                color: Color(0xFFF0057ff),
              ),
              onPressed: null),
          IconButton(
              iconSize: 50,
              icon: Icon(
                FontAwesome5.youtube_square,
                color: Colors.red,
              ),
              onPressed: null),
          IconButton(
              iconSize: 50,
              icon: Icon(
                FontAwesome5.github_square,
                color: Colors.black,
              ),
              onPressed: null),
          IconButton(
              iconSize: 50,
              icon: Icon(
                FontAwesome5.linkedin_in,
                color: Color(0xFFF0073b0),
              ),
              onPressed: null),
        ],
      ),
    );
  }
}

class IconRessponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              iconSize: 50,
              icon: Icon(
                FontAwesome5.facebook_square,
                color: Color(0xFFF4267b2),
              ),
              onPressed: null),
          IconButton(
              iconSize: 50,
              icon: Icon(
                FontAwesome5.behance_square,
                color: Color(0xFFF0057ff),
              ),
              onPressed: null),
          IconButton(
              iconSize: 50,
              icon: Icon(
                FontAwesome5.youtube_square,
                color: Colors.red,
              ),
              onPressed: null),
          IconButton(
              iconSize: 50,
              icon: Icon(
                FontAwesome5.github_square,
                color: Colors.black,
              ),
              onPressed: null),
          IconButton(
              iconSize: 50,
              icon: Icon(
                FontAwesome5.linkedin_in,
                color: Color(0xFFF0073b0),
              ),
              onPressed: null),
        ],
      ),
    );
  }
}
