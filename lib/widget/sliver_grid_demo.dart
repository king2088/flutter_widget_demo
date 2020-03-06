import 'package:flutter/material.dart';
import '../model/list_view_data.dart';

class SliverGridDemo extends StatelessWidget {
  const SliverGridDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('slivers网格'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverSafeArea(
            // 当没有appbar的情况下可以使用此属性，以防止grid超过可视范围占用了状态栏
            sliver: SliverPadding(
              padding: EdgeInsets.all(8), // 边距
              sliver: SliverDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverDemo extends StatelessWidget {
  const SliverDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            child: Image.asset(
              listViewData[index].imgUrl,
              fit: BoxFit.cover,
            ),
          );
        },
        childCount: listViewData.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1, // 设置高度
      ),
    );
  }
}
