import 'package:flutter/material.dart';

class MultipleWidgets extends StatefulWidget {
  @override
  _MultipleWidgetsState createState() => _MultipleWidgetsState();
}

class _MultipleWidgetsState extends State<MultipleWidgets> {
  bool checkBoxValue = false;
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text('Working with multiple widgets'),
      ),
      body: Column(
        children: [
          Column(
            children: [
              //if we use for loop inside [] like here don't use curley braces
              for (int i = 1; i <= 5; i++) buttonBuilder(i.toString())
            ],
          ),
          Checkbox(
              value: checkBoxValue,
              onChanged: (value) {
                // print(value);
                setState(() {
                  checkBoxValue = value;
                });
              }),
          Slider(
              activeColor: Colors.green,
              // divisions: 5,
              max: 10,
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              })
        ],
      ),
    );
  }

  Widget buttonBuilder(String buttonText) {
    //return type Widget since it is called from each item in Column
    return Container(
      alignment: Alignment.center, //makes its child to center
      height: 30,
      width: 70,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [BoxShadow()]),
      child: Text(buttonText),
      margin: EdgeInsets.all(10),
    );
  }
}
