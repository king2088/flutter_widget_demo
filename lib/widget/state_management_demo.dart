import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  StateManagementDemo({Key key}) : super(key: key);

  @override
  _StateManagementDemoState createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int _count = 0;

  void _increaseCount() {
    setState(() {
      _count += 1;
      print(_count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('状态管理'),
      ),
      body: Count(_count, _increaseCount),
      floatingActionButton: FloatingActionButton(
          onPressed: _increaseCount, child: Icon(Icons.add)),
    );
  }
}

// 由父辈管理状态,子部件中属于无状态
class Count extends StatelessWidget {
  final int count;
  // 点击chip的时候callback数字增加
  final VoidCallback increaseCount;

  Count(this.count, this.increaseCount);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ActionChip(
        label: Text('$count'),
        onPressed: increaseCount,
      ),
    );
  }
}
