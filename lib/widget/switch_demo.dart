import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  SwitchDemo({Key key}) : super(key: key);

  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchBluetooth = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch开关'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SwitchListTile(
              value: _switchBluetooth,
              title: Text('蓝牙'),
              subtitle: Text('点击开启蓝牙功能'),
              secondary: Icon(Icons.bluetooth),
              onChanged: (value) {
                print('object');
                setState(() {
                  _switchBluetooth = value;
                });
              },
              activeColor: Colors.blue,
              selected: _switchBluetooth,
            ),
          ],
        ),
      ),
    );
  }
}
