import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  String changeValue = "Initial";
  String gesture = 'No Guester provided yet!';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text(
          'Welcome1',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: [Icon(Icons.menu)],
      ),
      body: Column(
        children: [
          Text(changeValue),
          RaisedButton(
            onPressed: () {
              changeValue = "The value has been chnged";
              setState(() {});
            },
            child: Text('click Me'),
          ),
          SizedBox(
            height: 100,
          ),
          GestureDetector(
            child: Text("Provide Gesture Here"),
            onTap: () {
              // print("Working...");
              // setState(() {
              //   gesture = "onTap Called";
              // });

              handleGesture("onTap Called");
            },
            onLongPress: () {
              // setState(() {
              //   gesture = "onLongPress Called";
              // });

              handleGesture("onLongPress Called");
            },
            onDoubleTap: () {
              // setState(() {
              //   gesture = "onDoubleTap Called";
              // });

              handleGesture("onDoubleTap Called");
            },
          ),
          Row(
            children: [
              Text(
                'Gesture Status : ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 100,
              ),
              Text(gesture)
            ],
          )
        ],
      ),
    );
  }

  void handleGesture(String gestureProvided) {
    setState(() {
      gesture = gestureProvided;
    });
  }
}
