import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout 3"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.play_arrow),
        backgroundColor: Colors.blue,
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
                    top: MediaQuery.of(context).size.height * 0.41,
                    left: MediaQuery.of(context).size.width / 8,
                    right: MediaQuery.of(context).size.width / 4,
                    child: Container(
                        color: Colors.black.withOpacity(0.4),
                        height: MediaQuery.of(context).size.width * 3 / 8))
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
        ],
      ),
    );
  }
}
