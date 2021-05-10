import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout1 extends StatelessWidget {
  final recWidth = 50.0;
  final recHeight = 130.0;
  final textColor = 0x707070;
  final textString = "color palette";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Layout 1"),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/layout1.png',
              width: double.infinity,
              height: 500,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    textString,
                    style: TextStyle(
                        fontFamily: 'Nimbus',
                        fontSize: 40,
                        color: Color(textColor),
                        fontWeight: FontWeight.w300),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          renderContainer(0x313036),
                          renderContainer(0x1B304B),
                          renderContainer(0x344869),
                          renderContainer(0xB1B8C0),
                          renderContainer(0xD5D5D5),
                          renderContainer(0xF1F1EF)
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget renderContainer(int color) {
    return Container(width: recWidth, height: recHeight, color: Color(color));
  }
}
