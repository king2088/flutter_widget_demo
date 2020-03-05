import 'package:flutter/material.dart';
import 'icon_badge_demo.dart';

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row与Column布局'),
      ),
      body: Row(
        children: <Widget>[
          Container(
            child: Row(
              // 设置主轴
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconBadge(Icons.autorenew, size: 20),
                IconBadge(Icons.call, size: 20),
                IconBadge(Icons.apps, size: 20),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center, // 交叉轴
              children: <Widget>[
                IconBadge(Icons.autorenew, size: 20),
                IconBadge(Icons.call, size: 40),
                IconBadge(Icons.apps, size: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
