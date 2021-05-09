import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout2 extends StatelessWidget {
  var cirWidthAndHeight = 73.0;
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
                    "color palette",
                    style: TextStyle(
                        fontFamily: 'Nimbus',
                        fontSize: 40,
                        color: Color.fromRGBO(112, 112, 112, 1),
                        fontWeight: FontWeight.w300),
                  ),
                  Column(
                    children: [
                      Wrap(
                        spacing: 20.0,
                        runSpacing: 20.0,
                        children: [
                          Container(
                            width: cirWidthAndHeight,
                            height: cirWidthAndHeight,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(172, 169, 190, 1)),
                          ),
                          Container(
                            width: cirWidthAndHeight,
                            height: cirWidthAndHeight,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(225, 209, 222, 1)),
                          ),
                          Container(
                            width: cirWidthAndHeight,
                            height: cirWidthAndHeight,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(238, 227, 235, 1)),
                          ),
                          Container(
                            width: cirWidthAndHeight,
                            height: cirWidthAndHeight,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(246, 240, 244, 1)),
                          ),
                          Container(
                            width: cirWidthAndHeight,
                            height: cirWidthAndHeight,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(53, 64, 53, 1)),
                          ),
                          Container(
                            width: cirWidthAndHeight,
                            height: cirWidthAndHeight,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(60, 72, 58, 1)),
                          ),
                          Container(
                            width: cirWidthAndHeight,
                            height: cirWidthAndHeight,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(169, 170, 192, 1)),
                          ),
                          Container(
                            width: cirWidthAndHeight,
                            height: cirWidthAndHeight,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(186, 178, 199, 1)),
                          ),
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
}
