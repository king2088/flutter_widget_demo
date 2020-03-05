import 'package:flutter/material.dart';
import '../model/list_view_data.dart';

class GridViewBuilderDemo extends StatelessWidget {
  const GridViewBuilderDemo({Key key}) : super(key: key);

  Widget _gridViewBuilder(BuildContext context, int index) {
    return Container(
      child: Image.asset(
        listViewData[index].imgUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.builder网格视图'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(5),
        itemCount: listViewData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 设置每行的数量
          crossAxisSpacing: 8, // 间距
          mainAxisSpacing: 8, // 间距
        ),
        itemBuilder: _gridViewBuilder,
      ),
    );
  }
}
