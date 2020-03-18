import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  CheckBoxDemo({Key key}) : super(key: key);

  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _check1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _check1,
              title: Text('CheckBox 1'),
              subtitle: Text('description'),
              secondary: Icon(Icons.bluetooth),
              selected: _check1,
              onChanged: (value) {
                print('object $value');
                setState(() {
                  _check1 = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Checkbox(
                //   value: _check1,
                //   onChanged: (value) {
                //     print('click $value');
                //     setState(() {
                //       _check1 = value;
                //     });
                //   },
                //   activeColor: Colors.brown,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
