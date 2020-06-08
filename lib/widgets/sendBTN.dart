import 'package:flutter/material.dart';
import '../utils/responsiveLayout.dart';

class SendBTN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF5172ed),
                Color(0xFF271f50),
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Color(0xFF6078ea).withOpacity(.3),
                  offset: Offset(0.0, 8.0),
                  blurRadius: 8.0)
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Notify',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: ResponsiveLayout.isSmallScreen(context)
                          ? 12
                          : ResponsiveLayout.isMediumScreen(context) ? 12 : 16,
                      letterSpacing: 1.0),
                ),
                SizedBox(
                  width: ResponsiveLayout.isSmallScreen(context)
                      ? 4
                      : ResponsiveLayout.isMediumScreen(context) ? 6 : 8,
                ),
                Icon(
                  Icons.send,
                  color: Colors.white,
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
