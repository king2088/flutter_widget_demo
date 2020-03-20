import 'package:flutter/material.dart';
import '../model/list_view_data.dart';

class CardDemo extends StatefulWidget {
  CardDemo({Key key}) : super(key: key);

  @override
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card卡片'),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: listViewData.map((e) {
            return Card(
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    // 正常图片显示
                    // child: Image.asset(
                    //   e.imgUrl,
                    //   fit: BoxFit.cover,
                    // ),
                    // 带圆角的图片
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      child: Image.asset(
                        e.imgUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(e.imgUrl),
                    ),
                    title: Text(e.title),
                    subtitle: Text(e.author),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      e.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        onPressed: () => print('a'),
                        child: Text(
                          'Like'.toUpperCase(),
                        ),
                      ),
                      FlatButton(
                        onPressed: () => print('a'),
                        child: Text(
                          'Read'.toUpperCase(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
