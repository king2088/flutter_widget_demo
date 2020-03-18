import 'package:flutter/material.dart';

class FlatButtonDemo extends StatefulWidget {
  FlatButtonDemo({Key key}) : super(key: key);

  @override
  _FlatButtonDemoState createState() => _FlatButtonDemoState();
}

class _FlatButtonDemoState extends State<FlatButtonDemo> {
  final Widget _flatButton = Row(
    children: <Widget>[
      FlatButton(
        child: Text('文字按钮'),
        onPressed: () => print('click'),
        splashColor: Colors.red, // 点击水波纹颜色
        textColor: Colors.blue, // 文字颜色
      ),
      FlatButton.icon(
        icon: Icon(Icons.view_week),
        onPressed: () => print('click'),
        splashColor: Colors.blue, // 点击水波纹颜色
        label: Text('带图标的按钮'),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlatButton 按钮'),
      ),
      body: Container(
          child: Column(
        children: <Widget>[_flatButton],
      )),
    );
  }
}
