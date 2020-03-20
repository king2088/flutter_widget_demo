import 'package:flutter/material.dart';
import '../model/list_view_data.dart';

class DataSource extends DataTableSource {
  final List<ListViewData> _listViewData = listViewData;
  int _selectedCount = 0;
  @override
  int get rowCount => _listViewData.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;

  @override
  DataRow getRow(int index) {
    final ListViewData listViewData = _listViewData[index];
    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[
        DataCell(
          Text(listViewData.title),
        ),
        DataCell(
          Text(listViewData.author),
        ),
        DataCell(
          Image.asset(
            listViewData.imgUrl,
            width: 60,
            height: 40,
          ),
        ),
      ],
    );
  }

  void _sort(getField(post), bool ascending) {
    _listViewData.sort((a, b) {
      if (!ascending) {
        final c = a;
        a = b;
        b = c;
      }
      final aValue = getField(a);
      final bValue = getField(b);

      return Comparable.compare(aValue, bValue);
    });
    notifyListeners();
  }
}

class PaginatedDataTableDemo extends StatefulWidget {
  PaginatedDataTableDemo({Key key}) : super(key: key);

  @override
  _PaginatedDataTableDemoState createState() => _PaginatedDataTableDemoState();
}

class _PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {
  final DataSource _dataSource = DataSource();
  int _sortColumnIndex = 0;
  bool _sortAscending = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable数据表格分页/排序'),
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
                  child: PaginatedDataTable(
                    header: Text('内容列表'),
                    rowsPerPage: 5, // 每页显示多少条
                    source: _dataSource,
                    showCheckboxColumn: false,
                    sortColumnIndex: _sortColumnIndex,
                    sortAscending: _sortAscending,
                    columns: [
                      DataColumn(
                        onSort: (columnIndex, ascending) {
                          _dataSource._sort(
                              (list) => list.title.length, ascending);
                          setState(() {
                            _sortColumnIndex = columnIndex;
                            _sortAscending = ascending;
                          });
                        },
                        label: Container(
                          width: 80,
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
