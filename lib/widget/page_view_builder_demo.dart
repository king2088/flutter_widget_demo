import 'package:flutter/material.dart';
import '../model/list_view_data.dart';

class PageViewBuilderDemo extends StatelessWidget {
  const PageViewBuilderDemo({Key key}) : super(key: key);

  Widget _itemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.asset(
            listViewData[index].imgUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                listViewData[index].title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                listViewData[index].author,
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pageView builder轮播'),
      ),
      body: PageView.builder(
        itemCount: listViewData.length,
        itemBuilder: _itemBuilder,
      ),
    );
  }
}
