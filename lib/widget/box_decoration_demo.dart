import 'package:flutter/material.dart';

class BoxDecorationDemo extends StatelessWidget {
  const BoxDecorationDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BoxDecoration装饰盒子'),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 边框
            Container(
              child: Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
              // color: Colors.yellow,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 100, 255, 0.4),
                  // 单独设置各个边框
                  // border: Border(
                  //   top: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid,
                  //   ),
                  //   bottom: BorderSide(
                  //     color: Colors.black,
                  //     width: 3,
                  //     style: BorderStyle.solid,
                  //   ),
                  // ),
                  // 设置所有边框
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                    style: BorderStyle.solid,
                  )),
            ),
            // 圆角
            Container(
              child: Icon(
                Icons.account_box,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.green,
                // 四边都圆角
                // borderRadius: BorderRadius.circular(8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
            ),
            // 阴影
            Container(
              child: Icon(
                Icons.usb,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.orange,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(6, 7),
                    color: Colors.black38,
                    blurRadius: 4, // 模糊距离
                    spreadRadius: -4, // 模糊大小或位置
                  ),
                ],
              ),
            ),
            // 形状
            Container(
              child: Icon(
                Icons.widgets,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle, // 纯圆形
              ),
            ),
            // 渐变
            Container(
              child: Icon(
                Icons.face,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.orange,
                // gradient: RadialGradient(
                //   // 从内到外渐变
                //   colors: [
                //     Color.fromRGBO(1, 156, 255, 0.8),
                //     Color.fromRGBO(0, 0, 0, 0.8),
                //   ],
                // ),
                gradient: LinearGradient(
                  // 线性渐变
                  colors: [
                    Color.fromRGBO(1, 156, 255, 0.8),
                    Color.fromRGBO(0, 0, 0, 0.8),
                  ],
                  begin: Alignment.topLeft, // 更改渐变开始的位置
                  end: Alignment.topRight, // 渐变结束的位置
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // 背景
                Container(
                  child: Text(
                    '有背景',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  // height: 200,
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    image: DecorationImage(
                      image: AssetImage('assets/1.jpg'),
                      alignment: Alignment.bottomRight,
                      // repeat: ImageRepeat.repeatY, // 重复平铺
                      fit: BoxFit.cover, //满屏
                      // 背景图片调色
                      colorFilter: ColorFilter.mode(
                        Colors.indigoAccent[100].withOpacity(0.8),
                        BlendMode.darken,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
