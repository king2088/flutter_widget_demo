import 'package:flutter/material.dart';
import '../model/list_view_data.dart';

class ListViewDemo extends StatefulWidget {
  ListViewDemo({Key key}) : super(key: key);

  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8),
      // padding: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          Image.asset(listViewData[index].imgUrl),
          SizedBox(
            height: 16,
          ),
          Text(
            listViewData[index].title,
            style: Theme.of(context).textTheme.headline5,
          ),
          Text(
            listViewData[index].author,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: Text('listView展示')),
      body: ListView.builder(
          itemCount: listViewData.length, itemBuilder: _listItemBuilder),
    );
  }
}
