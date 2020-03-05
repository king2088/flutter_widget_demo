import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static _listTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    );
  }

  List items = [
    {
      'title': 'Hello World',
      'description': '必学第一列Scaffold/Center',
      'router': '/hello-world'
    },
    {
      'title': 'listView部件',
      'description': 'listView列表Demo实例',
      'router': '/list-view'
    },
    {
      'title': 'AppBar图标',
      'description': 'AppBar上的左右图标按钮',
      'router': '/appbar-icon-button'
    },
    {
      'title': '顶部TabBar',
      'description': '用标签的形式展示内容',
      'router': '/defaultTabController'
    },
    {
      'title': '抽屉Drawer部件',
      'description': '抽屉drawer打开的效果',
      'router': '/drawer'
    },
    {
      'title': '底部导航tabs实例',
      'description': '使用bottomNavigationBar部件创建底部tabs',
      'router': '/tabs'
    },
    {
      'title': '文本与文本样式',
      'description': 'Text widget的使用与样式多样化',
      'router': '/text'
    },
    {
      'title': '富文本与样式',
      'description': 'richText行内多样式文字',
      'router': '/rich-text'
    },
    {
      'title': '容器盒子',
      'description': 'Container容器部件使用与样式',
      'router': '/container'
    },
    {
      'title': '盒子装饰器',
      'description': 'Container容器boxDecoration设置边框、圆角、阴影、形状、渐变、背景图',
      'router': '/box-decoration'
    },
    {
      'title': '图标小部件',
      'description': '可以在任意地方传入icon、size即可展示图标，无需再次编写多余代码',
      'router': '/badge'
    },
    {
      'title': '横排/竖排布局',
      'description': 'Row与Cloumn进行页面的横向以及纵向布局',
      'router': '/row-c'
    },
    {
      'title': '固定尺寸的盒子',
      'description': 'sizedBox固定盒子的应用',
      'router': '/sized-box'
    },
    {
      'title': '部件在一个盒子内叠加',
      'description': '采用stack部件构建盒子，并将多个部件叠加起来，类似于z-index',
      'router': '/stack'
    },
    {
      'title': '盒子宽高比',
      'description': '采用aspecRatio部件让盒子按照固定的比例展示',
      'router': '/asp'
    },
    {
      'title': '可限制盒子',
      'description':
          'ConstrainedBox设置盒子的最小或最大宽高包括minHeight/minWidth/maxHeight/maxWidth',
      'router': '/cbox'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter 小部件演示列表'),
        elevation: 0, // 去除影音
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: _listTitle(items[index]['title']),
                    subtitle: Text(items[index]['description']),
                    onTap: () {
                      print('router ${items[index]['router']}');
                      Navigator.pushNamed(context, items[index]['router']);
                    },
                  ),
                  index != items.length - 1 ? Divider() : Text('')
                ],
              ),
            );
          }),
    );
  }
}