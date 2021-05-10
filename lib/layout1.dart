import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Layout1 extends StatelessWidget {
  final spacing = 10;
  final textColor = "#707070";
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
              height: MediaQuery.of(context).size.width * 1,
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
                        color: HexColor(textColor),
                        fontWeight: FontWeight.w300),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          renderContainer(context, "#313036"),
                          renderContainer(context, "#1B304B"),
                          renderContainer(context, "#344869"),
                          renderContainer(context, "#B1B8C0"),
                          renderContainer(context, "#D5D5D5"),
                          renderContainer(context, "#F1F1EF")
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

  Widget renderContainer(BuildContext context, String color) {
    return Container(
        decoration: BoxDecoration(color: HexColor(color)),
        width: (MediaQuery.of(context).size.width - spacing * 7) / 6,
        height: (MediaQuery.of(context).size.width - spacing * 7) / 6 * 2.5);
  }
}
