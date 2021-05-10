import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Layout2 extends StatelessWidget {
  final textColor = "#707070";
  final textString = "color palette";
  final spacing = 20.0;
  final runSpacing = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Layout 2"),
        // ),
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
                        color: HexColor(textColor),
                        fontWeight: FontWeight.w300),
                  ),
                  Column(
                    children: [
                      Wrap(
                        spacing: spacing,
                        runSpacing: runSpacing,
                        children: [
                          renderContainer(context, "#ACA9BE"),
                          renderContainer(context, "#E1D1DE"),
                          renderContainer(context, "#EEE3EB"),
                          renderContainer(context, "#F6F0F4"),
                          renderContainer(context, "#354035"),
                          renderContainer(context, "#3C483A"),
                          renderContainer(context, "#A9AAC0"),
                          renderContainer(context, "#BAB2C7"),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/images/layout2.png',
              height: MediaQuery.of(context).size.width * 1,
              width: double.infinity,
              fit: BoxFit.cover,
              alignment: Alignment.bottomLeft,
            ),
          ],
        ));
  }

  Widget renderContainer(BuildContext context, String color) {
    return Container(
        decoration: new BoxDecoration(
            color: HexColor(color), borderRadius: BorderRadius.circular(50)),
        width: (MediaQuery.of(context).size.width - spacing * 4) / 4,
        height: (MediaQuery.of(context).size.width - spacing * 4) / 4);
  }
}
