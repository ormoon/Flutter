import 'package:flutter/material.dart';
import 'package:fluttergca/multipleWidgets.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        drawer: _drawer(),
        // endDrawer: _drawer(),
        floatingActionButton: ctreateFloatingActionButton(),
        body: _body(),
        bottomSheet: Container(
          width:370,
          height: 10,
          color: Colors.amber,
        ),
        );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: Text(
        'Counter App',
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        Icon(Icons.call),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.video_call),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }

  Widget _drawer() {
    return Drawer(
      child: MultipleWidgets(),
    );
  }

  Widget _body() {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('You have pressed button this many times'),
        Text('$count') // OR Text(count.toString())
      ],
    ));
  }

  Widget ctreateFloatingActionButton() {
    return Ink(
      //Ink lets us to fill color in Row or Cloumn to determined its occupied space
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          createButton(
            () {
              increment();
            },
            Icon(
              Icons.add,
              size: 40,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          createButton(() {
            decrement();
          }, Text('-', style: TextStyle(fontSize: 30)))
        ],
      ),
    );
  }

  Widget createButton(Function onPressed, Widget child) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: child,
      backgroundColor: Colors.green,
    );
  }

  increment() {
    setState(() {
      count++;
    });
  }

  decrement() {
    setState(() {
      count--;
    });
  }
}
