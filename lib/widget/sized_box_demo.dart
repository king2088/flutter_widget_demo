import 'package:flutter/material.dart';

class SizedBoxDemo extends StatelessWidget {
  const SizedBoxDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('固定尺寸的盒子'),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
                width: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.weekend,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
                height: 20,
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Container(
                  alignment: Alignment(1, -1), // 设置内容的位置
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.view_array,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
