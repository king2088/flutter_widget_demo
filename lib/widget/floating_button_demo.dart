import 'package:flutter/material.dart';

class FloatingButtonDemo extends StatefulWidget {
  FloatingButtonDemo({Key key}) : super(key: key);

  @override
  _FloatingButtonDemoState createState() => _FloatingButtonDemoState();
}

class _FloatingButtonDemoState extends State<FloatingButtonDemo> {
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: () {
      print('click');
    },
    child: Icon(Icons.add),
    elevation: 0,
    backgroundColor: Colors.black,
    // shape: BeveledRectangleBorder(
    //   borderRadius: BorderRadius.circular(32), // 设置按钮的边框
    // ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('button按钮'),
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, // 设置浮动按钮的位置
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
        ),
        shape: CircularNotchedRectangle(), // 设置底部
      ),
    );
  }
}
