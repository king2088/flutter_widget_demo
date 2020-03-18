import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    textEditingController.text = 'hi';
    textEditingController.addListener(() {
      print('输入${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField文本字段'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: textEditingController,
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                labelText: '用户名',
                labelStyle: TextStyle(
                  color: Colors.blue,
                ),
                hintText: '请输入用户名',
                helperText: '此处填写用户名',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.show_chart,
                  color: Colors.blue,
                ),
                labelText: '密  码',
                labelStyle: TextStyle(
                  color: Colors.blue,
                ),
                hintText: '请输入密码',
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              onChanged: (value) => print('输入的值是$value'), // 通过change事件监听输入的值
              onSubmitted: (value) => print('提交的值是$value'), // 按enter提交时的值
              decoration: InputDecoration(
                icon: Icon(
                  Icons.show_chart,
                  color: Colors.blue,
                ),
                labelText: '确认密码',
                labelStyle: TextStyle(
                  color: Colors.blue,
                ),
                hintText: '请输入密码',
                border: OutlineInputBorder(),
                filled: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
