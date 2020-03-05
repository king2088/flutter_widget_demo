import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  BottomNavigationBarDemo({Key key}) : super(key: key);

  @override
  _BottomNavigationBarDemoState createState() =>
      _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  void _onTapTabs(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('底部导航Tabs'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // 底部项目大于等于4个，则底部导航栏颜色就会发生变化，需要重新设置下导航栏的类型
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black, // 激活后的颜色
        currentIndex: _currentIndex, // 默认选中
        onTap: _onTapTabs,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.backup),
            title: Text('备份'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('导出'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important),
            title: Text('告警'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('我的'),
          ),
        ],
      ),
    );
  }
}
