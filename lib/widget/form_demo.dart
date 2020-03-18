import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  FormDemo({Key key}) : super(key: key);

  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final _formDemo = GlobalKey<FormState>();
  String username, password;
  bool autoValidate = false;
  void submitForm() {
    if (_formDemo.currentState.validate()) {
      _formDemo.currentState.save();
      print('name: $username, password: $password');
      // Scaffold.of(context).showSnackBar(
      //   SnackBar(
      //     content: Text('Loading'),
      //   ),
      // );
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

  String validateUsername(value) {
    if (value.isEmpty) {
      return '用户名不能为空';
    }
    return null;
  }

  String validatePassword(value) {
    if (value.isEmpty) {
      return '密码不能为空';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form表单'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formDemo,
          child: Column(children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: '用户名',
              ),
              onSaved: (newValue) => username = newValue,
              validator: (value) => validateUsername(value),
              autovalidate: autoValidate, // 自动验证
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '密    码',
              ),
              onSaved: (newValue) => password = newValue,
              validator: (value) => validatePassword(value),
              autovalidate: autoValidate,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  submitForm(); // 点击登录按钮，提交信息
                },
                child: Text(
                  '登录',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
