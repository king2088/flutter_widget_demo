import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello world 实例'),
        elevation: 0,
      ),
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
