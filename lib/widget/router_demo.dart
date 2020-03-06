import 'package:flutter/material.dart';
import './grid_view_demo.dart';

class RouterDemo extends StatelessWidget {
  const RouterDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由实例'),
      ),
      body: Container(
          child: ButtonBar(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => GridViewDemo()));
            },
            child: Text('去网格页面'),
          ),
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('返回上一页'),
          ),
        ],
      )),
    );
  }
}
