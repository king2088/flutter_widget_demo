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
import './widget/page_view_demo.dart';
import './widget/page_view_builder_demo.dart';
import './widget/grid_view_demo.dart';
import './widget/grid_view_extent_demo.dart';
import './widget/grid_view_builder_demo.dart';
import './widget/sliver_grid_demo.dart';
import './widget/sliver_list_demo.dart';
import './widget/sliver_appBar_demo.dart';
import './widget/router_demo.dart';
import './widget/inkWell_demo.dart';
import './widget/custome_theme_demo.dart';
import './widget/text_field_demo.dart';
import './widget/form_demo.dart';
import './widget/floating_button_demo.dart';
import './widget/flat_button_demo.dart';
import './widget/reised_button_demo.dart';
import './widget/outline_button_demo.dart';
import './widget/popupmenuButton_demo.dart';
import './widget/checkbox_demo.dart';
import './widget/radio_demo.dart';
import './widget/switch_demo.dart';
import './widget/slider_demo.dart';
import './widget/date_time_demo.dart';
import './widget/simple_dialog_demo.dart';
import './widget/alert_dialog_demo.dart';
import './widget/bottom_sheet_demo.dart';
import './widget/snack_bar_demo.dart';
import './widget/expansion_panel_demo.dart';
import './widget/chip_demo.dart';
import './widget/data_table_demo.dart';
import './widget/paginated_datatable_demo.dart';
import './widget/card_demo.dart';
import './widget/stepper_demo.dart';
import './widget/state_management_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        // primaryColor: Colors.yellow,
        accentColor: Colors.brown,
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
        '/page-view': (_) => PageViewDemo(),
        '/page-view-b': (_) => PageViewBuilderDemo(),
        '/grid1': (_) => GridViewDemo(),
        '/grid2': (_) => GridViewExtentDemo(),
        '/grid3': (_) => GridViewBuilderDemo(),
        '/sliver': (_) => SliverGridDemo(),
        '/sliver-list': (_) => SliverListDemo(),
        '/sliver-bar': (_) => SliverAppBarDemo(),
        '/route': (_) => RouterDemo(),
        '/inkwell': (_) => InkWellDemo(),
        '/theme': (_) => CustomeThemeDemo(),
        '/text-field': (_) => TextFieldDemo(),
        '/form': (_) => FormDemo(),
        '/float-btn': (_) => FloatingButtonDemo(),
        '/flat-btn': (_) => FlatButtonDemo(),
        '/rsd-btn': (_) => RaisedButtonDemo(),
        '/outline-btn': (_) => OutlineButtonDemo(),
        '/pop-menu-btn': (_) => PopupMenuButtonDemo(),
        '/checkbox': (_) => CheckBoxDemo(),
        '/radio': (_) => RadioDemo(),
        '/switch': (_) => SwitchDemo(),
        '/slider': (_) => SliderDemo(),
        '/date': (_) => DateTimeDemo(),
        '/simple-dialog': (_) => SimpleDialogDemo(),
        '/alert': (_) => AlertDialogDemo(),
        '/bootom-sheet': (_) => BottomSheetDemo(),
        '/snack': (_) => SnackBarDemo(),
        '/ex-panel': (_) => ExpansionPanelDemo(),
        '/chip': (_) => ChipDemo(),
        '/dataTable': (_) => DataTableDemo(),
        '/patb': (_) => PaginatedDataTableDemo(),
        '/card': (_) => CardDemo(),
        '/step': (_) => StepperDemo(),
        '/state': (_) => StateManagementDemo(),
      },
    );
  }
}
