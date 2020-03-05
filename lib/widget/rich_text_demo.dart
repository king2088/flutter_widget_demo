import 'package:flutter/material.dart';

class RichTextDemo extends StatelessWidget {
  const RichTextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('富文本行内多样式')),
      body: Container(
        child: RichText(
          text: TextSpan(
            text: '静夜思,',
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: '床前明月光,',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              TextSpan(
                text: '疑是地上霜。',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
