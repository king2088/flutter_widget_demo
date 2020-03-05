import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/widget/row_column_demo.dart';
import './Home/home.dart';
import './widget/hello_world.dart';
import './widget/list_view.dart';
import './widget/appbar_icon_button.dart';
import './widget/DefaultTabControllerDemo.dart';
import './widget/drawerDemo.dart';
import './widget/BottomNavigationBarDemo.dart';
import './widget/text_widget_demo.dart';
import './widget/rich_text_demo.dart';
import './widget/container_widget_demo.dart';
import './widget/box_decoration_demo.dart';
import './widget/icon_badge_demo.dart';
import './widget/sized_box_demo.dart';
import './widget/stack_demo.dart';
import './widget/aspectRatio_demo.dart';
import './widget/constrainedBox_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/home': (_) => HomePage(),
        '/hello-world': (_) => HelloWorld(),
        '/list-view': (_) => ListViewDemo(),
        '/appbar-icon-button': (_) => AppBarIconButtonDemo(),
        '/defaultTabController': (_) => DefaultTabControllerDemo(),
        '/drawer': (_) => DrawerDemo(),
        '/tabs': (_) => BottomNavigationBarDemo(),
        '/text': (_) => TextWidgetDemo(),
        '/rich-text': (_) => RichTextDemo(),
        '/container': (_) => ContainerWidgetDemo(),
        '/box-decoration': (_) => BoxDecorationDemo(),
        '/badge': (_) => IconBadgeDemo(),
        '/row-c': (_) => RowColumnDemo(),
        '/sized-box': (_) => SizedBoxDemo(),
        '/stack': (_) => StackDemo(),
        '/asp': (_) => AspectRatioDemo(),
        '/cbox': (_) => ConstrainedBoxDemo(),
      },
    );
  }
}
