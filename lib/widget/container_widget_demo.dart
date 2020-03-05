import 'package:flutter/material.dart';

class ContainerWidgetDemo extends StatelessWidget {
  const ContainerWidgetDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container容器'),
      ),
      body: Container(
        height: 200,
        color: Colors.grey[300],
        child: Row(
          children: <Widget>[
            Container(
              child: Icon(Icons.add),
              color: Color.fromRGBO(3, 100, 255, .6),
              padding: EdgeInsets.only(left: 20, right: 10),
              margin: EdgeInsets.only(left: 10),
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
