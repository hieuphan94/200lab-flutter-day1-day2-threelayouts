import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout2 extends StatelessWidget {
  final cirWidthAndHeight = 73.0;
  final textColor = 0x707070;
  final textString = "color palette";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Layout 2"),
        ),
        body: Column(
          children: <Widget>[
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
                      Wrap(
                        spacing: 20.0,
                        runSpacing: 20.0,
                        children: [
                          renderContainer(0xACA9BE),
                          renderContainer(0xE1D1DE),
                          renderContainer(0xEEE3EB),
                          renderContainer(0xF6F0F4),
                          renderContainer(0x354035),
                          renderContainer(0x3C483A),
                          renderContainer(0xA9AAC0),
                          renderContainer(0xBAB2C7),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/images/layout2.png',
              height: 500,
              width: double.infinity,
              fit: BoxFit.cover,
              alignment: Alignment.bottomLeft,
            ),
          ],
        ));
  }
  Widget renderContainer(int color) {
    return Container(width: cirWidthAndHeight, height: cirWidthAndHeight, color: Color(color));
  }
}
