import 'package:flutter/material.dart';

class OutlineButtonDemo extends StatelessWidget {
  const OutlineButtonDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('带边框的按钮'),
      ),
      body: Container(
        child: Column(children: <Widget>[
          OutlineButton(
            child: Text('带边框的按钮'),
            onPressed: () => print('click'),
            textColor: Colors.lightBlue,
            splashColor: Colors.black,
            borderSide: BorderSide(
              color: Colors.yellow,
            ),
            highlightedBorderColor: Colors.red, // 点击时边框颜色
          ),
          // 设置按钮宽度
          Container(
            width: 200,
            height: 100,
            child: OutlineButton(
              child: Text('带宽高的按钮'),
              onPressed: () => print('click'),
              textColor: Colors.lightBlue,
              splashColor: Colors.black,
              borderSide: BorderSide(
                color: Colors.yellow,
              ),
              highlightedBorderColor: Colors.red, // 点击时边框颜色
            ),
          ),
          // 占满宽度的按钮
          Row(
            children: <Widget>[
              Expanded(
                child: OutlineButton(
                  child: Text('带宽高的按钮'),
                  onPressed: () => print('click'),
                  textColor: Colors.lightBlue,
                  splashColor: Colors.red,
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  highlightedBorderColor: Colors.red, // 点击时边框颜色
                ),
              ),
            ],
          ),
          // 左右两个按钮
          Row(
            children: <Widget>[
              Expanded(
                child: OutlineButton(
                  child: Text('Button1'),
                  onPressed: () => print('click'),
                  textColor: Colors.lightBlue,
                  splashColor: Colors.red,
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  highlightedBorderColor: Colors.red, // 点击时边框颜色
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 2, // 按钮占据多少份额
                child: OutlineButton(
                  child: Text('button2'),
                  onPressed: () => print('click'),
                  textColor: Colors.lightBlue,
                  splashColor: Colors.red,
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  highlightedBorderColor: Colors.red, // 点击时边框颜色
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
