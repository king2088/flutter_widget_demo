import 'package:flutter/material.dart';

class TextWidgetDemo extends StatelessWidget {
  const TextWidgetDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('文本与文本样式')),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('正常默认文字'),
              Text('加粗的文字', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('带颜色的文字', style: TextStyle(color: Colors.red)),
              Text('文字大小设置', style: TextStyle(fontSize: 25)),
              Text(
                '带背景及颜色的删除样式文字',
                style: TextStyle(
                  backgroundColor: Colors.black,
                  color: Colors.white,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Container(
                width: 500,
                child: Text('居右的文字', textAlign: TextAlign.right),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
