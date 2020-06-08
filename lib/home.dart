import 'package:flutter/material.dart';

import 'widgets/icoSocial.dart';
import 'widgets/navbar.dart';
import 'utils/responsiveLayout.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFF8FBFF),
            Color(0xFFFCFDFD),
          ]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[NavBar(), Body()],
            ),
          ),
        ));
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .5,
            child: Image.network(
              "assets/bg2.png",
              scale: .95,
              fit: BoxFit.cover,
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
                padding: EdgeInsets.only(left: 48),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Hello my name is",
                        style: TextStyle(
                          fontSize: 50,
                          fontFamily: "Montserrat",
                          color: Color(0xFF5172ed),
                        ),
                      ),
                      Text("PHUC HUYNH",
                          style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF271f50),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "I'm a 26 years old. I'm Software Engineer from Ho Chi Minh City.\nI like photography and design. \nI started became Photographer about two year ago.\n\nI have 2.5 year experience in Software Engineer and a little experience in UI/UX Design,\nI want to become Designer",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w100,
                            color: Color(0xFF9e9e9e)),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            child: Row(
                              children: [IcoBTN()],
                            ),
                          )),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello my name is",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Montserrat-Regular",
                color: Color(0xFF5172ed),
              ),
            ),
            Text("PHUC HUYNH",
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF271f50),
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              "I'm a 26 years old. I'm Software Engineer from Ho Chi Minh City. I like photography and design. \nI started became Photographer about two year ago.\n\nI have 2.5 year experience in Software Engineer and a little experience in UI/UX Design,\nI want to become Designer",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w100,
                  color: Color(0xFF9e9e9e)),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Row(
                    children: [IconRessponsive()],
                  ),
                )),
            FractionallySizedBox(
              alignment: Alignment.center,
              widthFactor: .8,
              child: Image.network("assets/bg2.png", scale: .75),
            ),
          ],
        ),
      ),
    );
  }
}
