import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.call),
          SizedBox(width: 15),
          Icon(Icons.video_call),
          SizedBox(width: 15)
        ],
        title: Text('Welcome'),
      ),
      body: ListView(
        //Column,Row,ListView... ListView=allow scroll,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20,
            width: 200,
            color: Colors.yellow,
          ),
          Container(
            height: 20,
            width: 200,
            color: Colors.green,
          ),
          Container(
            height: 20,
            width: 200,
            color: Colors.blue,
          ),
          Container(
            height: 20,
            width: 200,
            color: Colors.red,
            child: Text(
              'Welcome',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextField(),
          RaisedButton(
            onPressed: () {},
            elevation: 15,
            child: Text('RaisedButton',
                style: TextStyle(color: Colors.deepOrange)),
            color: Colors.amber,
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              'FlatButton',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.green,
          ),
          Image.network(
            'https://myrepublica.nagariknetwork.com/uploads/media/Politicalmap_20200518210642.jpg',
            height: 50,
            width: 500,
          ),
          SizedBox(
            height: 10,
          ), //for space
          Container(
            color: Colors.purple,
            height: 200,
            width: 300,
            child: Stack(
              children: [
                Container(
                  height: 180,
                  width: 250,
                  color: Colors.green,
                ),
                Container(
                  height: 150,
                  width: 200,
                  color: Colors.yellow,
                ),
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.blue,
                  child: Text(
                    'This is due to stack',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 300,
            color: Color(0xff000000),
            child: Text('always put 0xff prefix for hexcode of colors',style: TextStyle(color:Colors.white),),
          )
        ],
      ),
    );
  }
}
