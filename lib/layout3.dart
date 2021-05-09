import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout 3"),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Row(
                  children: [
                    Container(
                      height: double.infinity,
                      width: 100,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          color: Colors.orange,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          color: Colors.blue,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          color: Colors.pink,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                    flex: 2,
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 3,
                                            child: Container(
                                              color: Colors.lightBlueAccent,
                                            )),
                                        Expanded(
                                            child: Row(
                                          children: [
                                            Expanded(
                                                child: Container(
                                              color: Colors.greenAccent,
                                            )),
                                            Expanded(
                                                child: Container(
                                              color: Colors.yellowAccent,
                                            ))
                                          ],
                                        ))
                                      ],
                                    ))
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.yellowAccent,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
                Positioned(
                    top: 375,
                    left: 50,
                    right: 70,
                    child: Container(
                      color: Colors.black.withOpacity(0.4),
                      height: 200,
                    ))
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.pink,
              margin: EdgeInsets.only(left: 10),
            ),
          ),
          // Stack(
          //   children: [
          //     Positioned(
          //         top: 100,
          //         left: 50,
          //         right: 0,
          //         child: Container(
          //           color: Colors.black,
          //           width: 100,
          //           height: 100,
          //         ))
          //   ],
          // )
        ],
      ),
    );
  }
}
