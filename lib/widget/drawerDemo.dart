import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  DrawerDemo({Key key}) : super(key: key);

  @override
  _DrawerDemoState createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('抽屉效果'),
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () => null,
        // ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => {Navigator.pop(context)}),
        ],
      ),
      drawer: Container(
        color: Colors.white, // 设置容器背景
        width: 300,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // 基本头部信息
            // DrawerHeader(
            //   child: Text('Header'),
            //   decoration: BoxDecoration(color: Colors.grey[100]),
            // ),
            // 用户信息
            UserAccountsDrawerHeader(
              accountName: Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text('King6180@gmail.com'),
              currentAccountPicture: CircleAvatar(
                // 头像图片
                backgroundImage: AssetImage('assets/1.jpg'),
              ),
              // 背景颜色及图片
              decoration: BoxDecoration(
                color: Colors.blue[500],
                image: DecorationImage(
                  image: AssetImage('assets/2.jpg'),
                  fit: BoxFit.cover, // 背景填充方式
                  // 背景图片透明度与透明模式
                  colorFilter: ColorFilter.mode(
                    Colors.blue[800].withOpacity(0.5),
                    BlendMode.colorDodge, // 混合模式
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                '用户信息',
                textAlign: TextAlign.right,
              ),
              trailing: Icon(
                Icons.account_box,
                color: Colors.black54,
                size: 20,
              ),
              // leading: , // 在前面显示图标
            ),
            ListTile(
              title: Text(
                '电池信息',
                textAlign: TextAlign.right,
              ),
              trailing: Icon(
                Icons.battery_unknown,
                color: Colors.black54,
                size: 20,
              ),
              // leading: , // 在前面显示图标
            ),
            ListTile(
              title: Text(
                'Wifi信息',
                textAlign: TextAlign.right,
              ),
              trailing: Icon(
                Icons.wifi,
                color: Colors.black54,
                size: 20,
              ),
              // leading: , // 在前面显示图标
            ),
            ListTile(
              title: Text(
                '关闭抽屉',
                textAlign: TextAlign.right,
              ),
              trailing: Icon(
                Icons.close,
                color: Colors.black54,
                size: 20,
              ),
              onTap: () {
                Navigator.pop(context);
              },
              // leading: , // 在前面显示图标
            ),
          ],
        ),
      ),
      drawerEdgeDragWidth: 20,
      // 右边抽屉
      endDrawer: Text('右边抽屉'),
    );
  }
}
