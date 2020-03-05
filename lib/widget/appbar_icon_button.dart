import 'package:flutter/material.dart';

class AppBarIconButtonDemo extends StatefulWidget {
  AppBarIconButtonDemo({Key key}) : super(key: key);

  @override
  _AppBarIconButtonDemoState createState() => _AppBarIconButtonDemoState();
}

class _AppBarIconButtonDemoState extends State<AppBarIconButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('AppBar上的图标按钮实例'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            debugPrint('click menu icon');
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_box),
            onPressed: () => debugPrint('click add_box icon'),
          ),
          IconButton(
            icon: Icon(Icons.zoom_out),
            onPressed: () => debugPrint('click zoom_out icon'),
          ),
          IconButton(
            icon: Icon(Icons.zoom_in),
            onPressed: () => debugPrint('click zoom_in icon'),
          ),
        ],
      ),
    );
  }
}
