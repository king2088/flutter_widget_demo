import 'package:flutter/material.dart';

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pageView轮播图'),
      ),
      body: PageView(
        // pageSnapping: false, // 设置是否直接滑动到下一页，false为不直接滑动
        // reverse: true, // 反转chuldren中的元素
        scrollDirection: Axis.vertical, // 设置滑动的方向，horizontal为水平滑动,vertical为垂直滑动
        onPageChanged: (currentPage) {
          print('当前第${currentPage + 1}页面');
        },
        controller: PageController(
          initialPage: 1, // 默认显示第几页
          keepPage: false,
          viewportFraction: 0.8, // 设置每一个view的宽或高为80%
        ),
        children: <Widget>[
          Container(
            color: Colors.brown,
            alignment: Alignment(0, 0),
            child: Text(
              'One',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 33,
              ),
            ),
          ),
          Container(
            color: Colors.yellow,
            alignment: Alignment(0, 0),
            child: Text(
              'Two',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 33,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
