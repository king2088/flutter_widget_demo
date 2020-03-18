import 'package:flutter/material.dart';

class RaisedButtonDemo extends StatefulWidget {
  RaisedButtonDemo({Key key}) : super(key: key);

  @override
  _RaisedButtonDemoState createState() => _RaisedButtonDemoState();
}

class _RaisedButtonDemoState extends State<RaisedButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('raisedButton按钮'),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('带背景色的按钮'),
                onPressed: () => print('click'),
                splashColor: Colors.amber,
                textColor: Colors.blue,
                elevation: 0,
              ),
              SizedBox(width: 16),
              RaisedButton.icon(
                onPressed: () => print('click'),
                icon: Icon(Icons.add),
                label: Text('带图标的按钮'),
                elevation: 20,
              ),
              SizedBox(width: 16),
              RaisedButton.icon(
                onPressed: () => print('click'),
                icon: Icon(Icons.add),
                label: Text('背景'),
                elevation: 20,
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ],
          ),
          Theme(
            // 替换主题
            data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                shape: BeveledRectangleBorder(
                  // 设置形状为矩形
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
            child: RaisedButton.icon(
              onPressed: () => print('click'),
              icon: Icon(Icons.add),
              label: Text('背景'),
              elevation: 20,
              color: Colors.blue,
              textColor: Colors.white,
            ),
          ),
        ],
      )),
    );
  }
}
