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
    {
      'title': '轮播图',
      'description': 'pageView部件构建轮流畅的播图效果，水平/垂直滑动',
      'router': '/page-view'
    },
    {
      'title': '根据数据生成轮播图',
      'description': 'pageView.builder部件根据数据循环构建轮播图页面',
      'router': '/page-view-b'
    },
    {'title': '网格视图一', 'description': 'GridView创建网格布局的页面', 'router': '/grid1'},
    {
      'title': '网格视图二',
      'description': 'GridView.extent创建网格布局的页面',
      'router': '/grid2'
    },
    {
      'title': '网格视图三',
      'description': 'GridView.builder创建网格布局的页面',
      'router': '/grid3'
    },
    {
      'title': '网格视图四',
      'description': '基于SliverGrid创建网格布局的页面',
      'router': '/sliver'
    },
    {
      'title': 'sliver列表',
      'description': '基于SliverList创建列表',
      'router': '/sliver-list'
    },
    {
      'title': 'sliver AppBar可影藏的appbar',
      'description': '基于SliverAppBar创建的appBar，可以自动隐藏',
      'router': '/sliver-bar'
    },
    {'title': '路由实例', 'description': 'Navigator实现路由跳转、回退等', 'router': '/route'},
    {
      'title': '点击水波纹动画效果',
      'description': 'InkWell部件配置水波纹动画效果',
      'router': '/inkwell'
    },
    {'title': '重置主题', 'description': '重新定制跟默认主题不一样的主题并应用', 'router': '/theme'},
    {
      'title': '文本字段',
      'description': 'TextField文本字段实例',
      'router': '/text-field'
    },
    {'title': 'Form表单', 'description': 'Form表单及文本字段实例', 'router': '/form'},
    {
      'title': 'Floating-Button浮动按钮',
      'description': 'flutter中的浮动按钮，FloatingActionButton、BottomAppBar等',
      'router': '/float-btn'
    },
    {
      'title': 'Flat-Button按钮',
      'description': 'FlatButton 部件，常见按钮',
      'router': '/flat-btn'
    },
    {
      'title': 'RaisedButton按钮',
      'description': 'RaisedButton带背景颜色的按钮',
      'router': '/rsd-btn'
    },
    {
      'title': 'OutlineButton按钮',
      'description': 'OutlineButton带边框的按钮',
      'router': '/outline-btn'
    },
    {
      'title': 'PopuMenuButton弹出式菜单',
      'description': 'PopuMenuButto弹出式菜单按钮',
      'router': '/pop-menu-btn'
    },
    {
      'title': 'CheckBox多选框',
      'description': 'CheckBox多选框',
      'router': '/checkbox'
    },
    {'title': 'Radio单选框', 'description': 'Radio单选框', 'router': '/radio'},
    {
      'title': 'Switch开关切换',
      'description': 'Switch Widget开关切换',
      'router': '/switch'
    },
    {
      'title': 'Slider滑动输入条',
      'description': 'Slider滑动型输入器，展示当前值和可选范围',
      'router': '/slider'
    },
    {'title': '日期选择器', 'description': 'dateTime日期格式化、选择器', 'router': '/date'},
    {
      'title': 'SimpleDialog对话框',
      'description': 'SimpleDialog基础简单的对话框',
      'router': '/simple-dialog'
    },
    {
      'title': 'AlertDialog弹出框',
      'description': 'AlertDialog对话框',
      'router': '/alert'
    },
    {
      'title': 'bottomSheet底部滑动窗口',
      'description': 'BottomSheet底部滑动窗口，从底部滑动弹出窗口',
      'router': '/bootom-sheet'
    },
    {
      'title': 'SnackBar操作提示',
      'description': 'SnackBar操作提示弹框',
      'router': '/snack'
    },
    {
      'title': 'ExpansionPanel收缩面板',
      'description': 'ExpansionPanel收缩面板,收起、展开、列表',
      'router': '/ex-panel'
    },
    {
      'title': 'Chip(碎片)，标签',
      'description': 'Chip标签展示，可删除标签等',
      'router': '/chip'
    }
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
