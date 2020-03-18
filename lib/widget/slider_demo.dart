import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  SliderDemo({Key key}) : super(key: key);

  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider滑动选择器'),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Text(
            '$_sliderValue',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 30),
          Slider(
            value: _sliderValue,
            activeColor: Colors.yellow,
            inactiveColor: Colors.black,
            min: 0,
            max: 10,
            divisions: 10,
            label: '${_sliderValue.toInt()}',
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
        ],
      )),
    );
  }
}
