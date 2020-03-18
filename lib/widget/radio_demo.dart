import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio单选'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RadioListTile(
              value: 0,
              groupValue: _radioValue,
              title: Text('单选Radio1'),
              subtitle: Text('data'),
              secondary: Icon(Icons.account_box),
              selected: _radioValue == 0,
              onChanged: (value) {
                setState(() {
                  _radioValue = value;
                });
              },
              activeColor: Colors.blue,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioValue,
              title: Text('单选Radio2'),
              subtitle: Text('data'),
              secondary: Icon(Icons.cached),
              selected: _radioValue == 1,
              onChanged: (value) {
                setState(() {
                  _radioValue = value;
                });
              },
              activeColor: Colors.red,
            ),
            RadioListTile(
              value: 3,
              groupValue: _radioValue,
              title: Text('单选Radio3'),
              subtitle: Text('data'),
              secondary: Icon(Icons.face),
              selected: _radioValue == 3,
              onChanged: (value) {
                setState(() {
                  _radioValue = value;
                });
              },
              activeColor: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
