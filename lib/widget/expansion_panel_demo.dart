import 'package:flutter/material.dart';

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;
  ExpansionPanelItem({this.headerText, this.body, this.isExpanded});
}

class ExpansionPanelDemo extends StatefulWidget {
  ExpansionPanelDemo({Key key}) : super(key: key);

  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  // bool panelOpenState = false;
  List<ExpansionPanelItem> _expansionPanelItems;
  @override
  void initState() {
    super.initState();
    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: '第一个面板',
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Text('内容区域'),
        ),
        isExpanded: true,
      ),
      ExpansionPanelItem(
        headerText: '第二个面板',
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Text('内容区域'),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: '第三个面板',
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Text('内容区域'),
        ),
        isExpanded: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanel收缩面板'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(children: <Widget>[
          ExpansionPanelList(
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
              });
            },
            children: _expansionPanelItems.map((ExpansionPanelItem item) {
              return ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        item.headerText,
                        style: TextStyle(color: Colors.blue),
                      ),
                    );
                  },
                  body: item.body,
                  isExpanded: item.isExpanded);
            }).toList(),
          )
        ]),
      ),
    );
  }
}
