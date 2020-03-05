import 'package:flutter/material.dart';

class IconBadgeDemo extends StatelessWidget {
  const IconBadgeDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('可配置的图标小部件'),
      ),
      body: Container(
        child: IconBadge(Icons.airplay, size: 60),
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  IconBadge(
    this.icon, {
    this.size = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.amber,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 4, 255, 0.8),
      margin: EdgeInsets.all(5),
    );
  }
}
