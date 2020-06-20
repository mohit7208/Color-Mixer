import 'package:flutter/material.dart';
import 'package:rgbslider/common/textstyles.dart';

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
                TextStyles(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  text: 'Red  ',
                ),
                Expanded(
                  child: Slider(
                    activeColor: Colors.red,
                    inactiveColor: Colors.grey,
                    min: 0.0,
                    max: 255.0,
                    onChanged: (redValue) {
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
                TextStyles(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  text: 'Blue ',
                ),
                Expanded(
                  child: Slider(
                    activeColor: Colors.blue,
                    inactiveColor: Colors.grey,
                    min: 0.0,
                    max: 255.0,
                    onChanged: (blueValue) {
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
                TextStyles(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  text: 'Green',
                ),
                Expanded(
                  child: Slider(
                    activeColor: Colors.green,
                    inactiveColor: Colors.grey,
                    min: 0.0,
                    max: 255.0,
                    onChanged: (greenValue) {
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
