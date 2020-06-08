import 'package:flutter/material.dart';
import '../utils/responsiveLayout.dart';

class NavBar extends StatelessWidget {
  final navLinks = ["HOME", 'STORY', "PORFOLIO", "ABOUT"];
  List<Widget> navItems() {
    return navLinks.map((text) {
      return Padding(
          padding: EdgeInsets.only(left: 18),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF5172ed),
            ),
          ));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(colors: [
                      Color(0xFF5172ed),
                      Color(0xFF271f50),
                    ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
                child: Center(
                  child: Text(
                    "P",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat",
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "PHUC",
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: "Montserrat",
                ),
              )
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[...navItems()]
                //..add(InkWell(
                //     child: Container(
                //       margin: EdgeInsets.only(left: 20),
                //       width: 120,
                //       height: 40,
                //       decoration: BoxDecoration(
                //           gradient: LinearGradient(
                //             colors: [
                //               Color(0xFF5172ed),
                //               Color(0xFF271f50),
                //             ],
                //             begin: Alignment.bottomRight,
                //             end: Alignment.topLeft,
                //           ),
                //           borderRadius: BorderRadius.circular(20),
                //           boxShadow: [
                //             BoxShadow(
                //               color: Color(0xFF6078ea).withOpacity(.3),
                //               offset: Offset(0, 8),
                //               blurRadius: 8,
                //             )
                //           ]),
                //       child: Material(
                //         color: Colors.transparent,
                //         child: Center(
                //           child: Text('Login',
                //               style: TextStyle(
                //                 color: Colors.white,
                //                 fontSize: 18,
                //                 letterSpacing: 1,
                //               )),
                //         ),
                //       ),
                //     ),
                //   )),
                )
          else
            Image.network(
              "assets/menu.png",
              width: 25,
              height: 25,
            )
        ],
      ),
    );
  }
}
