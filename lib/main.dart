import 'package:flutter/material.dart';
import './layout1.dart';
import './layout2.dart';
import './layout3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Page',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Fluter',
      home: Scaffold(
          // appBar: AppBar(
          //   title: Text("Thee Layouts"),
          // ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      print("Move to layout 1");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Layout1()));
                    },
                    child: Text("Layout 1")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      print("Move to layout 2");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Layout2()));
                    },
                    child: Text("Layout 2")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      print("Move to layout 3");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Layout3()));
                    },
                    child: Text("Layout 3"))
              ],
            ),
          )),
    );
  }
}
