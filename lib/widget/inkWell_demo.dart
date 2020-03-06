import 'package:flutter/material.dart';

class InkWellDemo extends StatelessWidget {
  const InkWellDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('点击水波纹动画效果'),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              child: Image.asset('assets/1.jpg'),
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent, // 背景必须透明
                child: InkWell(
                  splashColor: Colors.red.withOpacity(0.3),
                  highlightColor: Colors.white.withOpacity(0.1),
                  onTap: () => print('click'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
