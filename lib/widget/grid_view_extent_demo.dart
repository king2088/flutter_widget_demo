import 'package:flutter/material.dart';

class GridViewExtentDemo extends StatelessWidget {
  const GridViewExtentDemo({Key key}) : super(key: key);

  List<Widget> _buildTitle(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.grey[200],
        alignment: Alignment(0, 0),
        child: Text('item ${index + 1}'),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('grid view extent'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 80, // 最大交叉轴范围，每个item的宽高为80，包括间隔
        crossAxisSpacing: 8, // 项目左右间距
        mainAxisSpacing: 8, // 上下间距
        scrollDirection: Axis.vertical, // 设置网格布局方式，vertical垂直,horizontal水平
        children: _buildTitle(102),
      ),
    );
  }
}
