import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double red = 0.0;
  double green = 0.0;
  double blue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1),
      appBar: AppBar(
        title: Text('Color Mixer'),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 8, bottom: 8, top: 8),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Red  ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Slider(
                    activeColor: Colors.red,
                    inactiveColor: Colors.grey,
                    min: 0.0,
                    max: 255.0,
                    onChanged: (redValue) {
                      print(red.toInt());
                      setState(() {
                        red = redValue;
                      });
                    },
                    value: red,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  'Blue ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Slider(
                    activeColor: Colors.blue,
                    inactiveColor: Colors.grey,
                    min: 0.0,
                    max: 255.0,
                    onChanged: (blueValue) {
                      print(red.toInt());
                      setState(() {
                        blue = blueValue;
                      });
                    },
                    value: blue,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  'Green',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Slider(
                    activeColor: Colors.green,
                    inactiveColor: Colors.grey,
                    min: 0.0,
                    max: 255.0,
                    onChanged: (greenValue) {
                      print(red.toInt());
                      setState(() {
                        green = greenValue;
                      });
                    },
                    value: green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
