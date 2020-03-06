import 'package:flutter/material.dart';
import '../model/list_view_data.dart';

class SliverAppBarDemo extends StatelessWidget {
  const SliverAppBarDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('sliver appBar'),
      // ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // title: Text('sliver appBar'),
            // pinned: true, // 设置appbar是否固定在顶部
            floating: true,
            expandedHeight: 200, // 设置高度
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                '下半部分',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 20,
                ),
              ),
              centerTitle: true,
              background: Image.asset(
                'assets/3.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Material(
                      borderRadius: BorderRadius.circular(32),
                      elevation: 10,
                      shadowColor: Colors.amber,
                      child: Stack(
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Image.asset(
                              listViewData[index].imgUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  listViewData[index].title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  listViewData[index].author,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: listViewData.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
