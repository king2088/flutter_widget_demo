import 'package:flutter/material.dart';

class DefaultTabControllerDemo extends StatefulWidget {
  DefaultTabControllerDemo({Key key}) : super(key: key);

  @override
  _DefaultTabControllerDemoState createState() =>
      _DefaultTabControllerDemoState();
}

class _DefaultTabControllerDemoState extends State<DefaultTabControllerDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('顶部tab标签'),
          elevation: 0,
          bottom: TabBar(
              unselectedLabelColor: Colors.blue,
              indicatorColor: Colors.red, // 底部线条颜色
              indicatorSize: TabBarIndicatorSize.label, // 底部线条宽度跟图标一样宽
              indicatorWeight: 4, // 底部线条高度
              tabs: [
                Tab(
                  icon: Icon(Icons.folder),
                ),
                Tab(icon: Icon(Icons.apps)),
                Tab(icon: Icon(Icons.work)),
              ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Text('1'),
          ),
          Center(
            child: Text('2'),
          ),
          Center(
            child: Text('3'),
          ),
        ]),
      ),
    );
  }
}
