import 'package:flutter/material.dart';
import '../model/list_view_data.dart';

class DataTableDemo extends StatefulWidget {
  DataTableDemo({Key key}) : super(key: key);

  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable数据表格'),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: DataTable(
                    showCheckboxColumn: false,
                    columns: [
                      DataColumn(
                        label: Container(
                          width: 150,
                          child: Text('标题'),
                        ),
                      ),
                      DataColumn(
                        label: Text('作者'),
                      ),
                      DataColumn(
                        label: Text('图片'),
                      ),
                    ],
                    rows: listViewData.map((list) {
                      return DataRow(
                        cells: [
                          DataCell(
                            Text(list.title),
                          ),
                          DataCell(
                            Text(list.author),
                          ),
                          DataCell(
                            Image.asset(list.imgUrl),
                          ),
                        ],
                        onSelectChanged: (value) {},
                      );
                    }).toList(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// DataTable(
//    showCheckboxColumn: false,
//    columns: [
//      DataColumn(label: Text('姓名')),
//      DataColumn(label: Text('留言')),
//    ],
//    rows: [
//      DataRow(
//        cells: [
//          DataCell(
//            Text('张三'),
//          ),
//          DataCell(
//            Text('好喜欢这首歌'),
//          ),
//        ],
//        onSelectChanged: (value) {},
//      ),
//      DataRow(
//        cells: [
//          DataCell(
//            Text('李四'),
//          ),
//          DataCell(
//            Text('哇塞'),
//          ),
//        ],
//        onSelectChanged: (value) {},
//      ),
//    ],
// )
