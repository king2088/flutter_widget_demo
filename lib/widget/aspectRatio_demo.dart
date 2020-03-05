import 'package:flutter/material.dart';

class AspectRatioDemo extends StatelessWidget {
  const AspectRatioDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('盒子宽高比'),
      ),
      body: Container(
          // color: Colors.pink,
          child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 2 / 1,
            child: Container(
              color: Colors.cyan,
              child: Center(
                child: Text('16/9的比例'),
              ),
            ),
          )
        ],
      )),
    );
  }
}
