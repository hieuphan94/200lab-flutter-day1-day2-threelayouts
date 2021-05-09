import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout1 extends StatelessWidget {
  var recWidth = 50.0;
  var recHeight = 130.0;
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
                    "color palette",
                    style: TextStyle(
                        fontFamily: 'Nimbus',
                        fontSize: 40,
                        color: Color.fromRGBO(112, 112, 112, 1),
                        fontWeight: FontWeight.w300),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width: recWidth,
                              height: recHeight,
                              color: Color.fromRGBO(49, 48, 54, 1)),
                          Container(
                              width: recWidth,
                              height: recHeight,
                              color: Color.fromRGBO(27, 48, 75, 1)),
                          Container(
                              width: recWidth,
                              height: recHeight,
                              color: Color.fromRGBO(52, 72, 105, 1)),
                          Container(
                              width: recWidth,
                              height: recHeight,
                              color: Color.fromRGBO(177, 184, 192, 1)),
                          Container(
                              width: recWidth,
                              height: recHeight,
                              color: Color.fromRGBO(213, 213, 213, 1)),
                          Container(
                              width: recWidth,
                              height: recHeight,
                              color: Color.fromRGBO(241, 241, 239, 1)),
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
}
