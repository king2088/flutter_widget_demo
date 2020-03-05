import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack部件叠加'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                  width: 300,
                  height: 300,
                  child: Container(
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(color: Colors.deepPurple),
                    child: Icon(
                      Icons.web,
                      color: Colors.cyanAccent,
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Container(
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Icon(
                      Icons.backup,
                      color: Colors.cyanAccent,
                    ),
                  ),
                ),
                // 定位部件的位置，相当于css中的position属性
                Positioned(
                  right: 10,
                  top: 10,
                  child: Icon(
                    Icons.send,
                    color: Colors.red,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
