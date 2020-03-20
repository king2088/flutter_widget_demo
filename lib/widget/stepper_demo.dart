import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  StepperDemo({Key key}) : super(key: key);

  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper步骤'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(primaryColor: Colors.black),
              child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (value) {
                  setState(() {
                    _currentStep = value;
                  });
                },
                onStepContinue: () {
                  setState(() {
                    _currentStep < 2 ? _currentStep += 1 : _currentStep = 0;
                  });
                },
                onStepCancel: () {
                  setState(() {
                    _currentStep > 0 ? _currentStep -= 1 : _currentStep = 0;
                  });
                },
                steps: [
                  Step(
                    title: Text('第一步'),
                    subtitle: Text('首先登陆'),
                    content: Text('点击下面的登录按钮，即可进行登录！'),
                    isActive: _currentStep == 0,
                  ),
                  Step(
                    title: Text('第二步'),
                    subtitle: Text('输入用户名密码'),
                    content: Text('在对应的input文本框中输入用户名和密码'),
                    isActive: _currentStep == 1,
                  ),
                  Step(
                    title: Text('第二步'),
                    subtitle: Text('输入用户名密码'),
                    content: Text('在对应的input文本框中输入用户名和密码'),
                    isActive: _currentStep == 2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
