import 'package:flutter/material.dart';

class CustomeThemeDemo extends StatelessWidget {
  const CustomeThemeDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.yellow),
        child: ThemeDemo(),
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  const ThemeDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      // child: Text('data'),
    );
  }
}
