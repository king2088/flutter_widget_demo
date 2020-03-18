import 'package:flutter/material.dart';
import 'dart:async';

class BottomSheetDemo extends StatefulWidget {
  BottomSheetDemo({Key key}) : super(key: key);

  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  _openBottomSheet() {
    _bottomSheetScaffoldKey.currentState
        .showBottomSheet((BuildContext context) {
      return BottomAppBar(
        child: Container(
          height: 90,
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Icon(Icons.play_arrow),
              SizedBox(width: 16),
              Text('12:20 / 18:20'),
              Expanded(
                child: Text('蓝莲花 - 许巍', textAlign: TextAlign.right),
              ),
            ],
          ),
        ),
      );
    });
  }

  Future _openModalBottomSheet() async {
    final option = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('第一条'),
                  onTap: () {
                    Navigator.pop(context, '一');
                  },
                ),
                ListTile(
                  title: Text('第二条'),
                  onTap: () {
                    Navigator.pop(context, '二');
                  },
                ),
                ListTile(
                  title: Text('第三条'),
                  onTap: () {
                    Navigator.pop(context, '三');
                  },
                ),
              ],
            ),
          );
        });

    print(option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheet底部滑动窗口'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () => _openBottomSheet(),
              child: Text('打开底部弹出框'),
            ),
            FlatButton(
              onPressed: () => _openModalBottomSheet(),
              child: Text('对话框式的底部滑动'),
            )
          ],
        ),
      ),
    );
  }
}
