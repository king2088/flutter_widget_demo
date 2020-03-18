import 'package:flutter/material.dart';
import 'dart:async';

enum Action { Ok, Cancel }

class AlertDialogDemo extends StatefulWidget {
  AlertDialogDemo({Key key}) : super(key: key);

  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String clickBtn = '';
  Future _alertDialog() async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false, // 关闭点击背景关闭提示框的功能
      builder: (context) {
        return AlertDialog(
          title: Text('提示'),
          content: Text('这里是弹出框的描述或内容区域'),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pop(context, Action.Cancel);
              },
              child: Text('取消'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pop(context, Action.Ok);
              },
              child: Text('确定'),
            ),
          ],
        );
      },
    );
    switch (action) {
      case Action.Ok:
        setState(() {
          clickBtn = '确定';
        });
        break;
      case Action.Cancel:
        setState(() {
          clickBtn = '取消';
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog弹出框'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            clickBtn != '' ? Text('你点击了 $clickBtn ') : Text(''),
            RaisedButton(
              onPressed: _alertDialog,
              child: Text('点我弹窗'),
            ),
          ],
        ),
      ),
    );
  }
}
