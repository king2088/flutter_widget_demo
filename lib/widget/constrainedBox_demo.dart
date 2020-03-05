import 'package:flutter/material.dart';

class ConstrainedBoxDemo extends StatelessWidget {
  const ConstrainedBoxDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('可限制盒子'),
      ),
      body: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200,
            ),
            child: Container(color: Colors.brown),
          ),
        ],
      ),
    );
  }
}
