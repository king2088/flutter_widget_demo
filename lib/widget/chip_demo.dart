import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  ChipDemo({Key key}) : super(key: key);

  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = ['Baidu', 'Google', 'Yahoo', 'SoHu', 'KuGou'];
  String _action = 'Not Selected';
  List<String> _selected = [];
  String _choice = 'Google';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip标签'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              // 可换行容器
              spacing: 8,
              children: <Widget>[
                Chip(
                  label: Text('label'),
                ),
                Chip(
                  label: Text(
                    'data',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.black,
                ),
                Chip(
                  label: Text('avatar'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text('D'),
                  ),
                ),
                Chip(
                  label: Text('avatar'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    child: Icon(Icons.cake),
                  ),
                ),
                Chip(
                  label: Text('avatar'),
                  avatar: CircleAvatar(
                    // backgroundColor: Colors.yellow,
                    child: Icon(Icons.cake),
                    backgroundImage: AssetImage('assets/1.jpg'),
                  ),
                ),
                Chip(
                  label: Text('delete'),
                  avatar: CircleAvatar(
                    // backgroundColor: Colors.yellow,
                    child: Icon(Icons.cake),
                  ),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteButtonTooltipMessage: '删除标签',
                ),
                Divider(
                  color: Colors.green,
                  height: 32,
                  // indent: 32, // 缩进距离
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.green,
                  height: 32,
                  // indent: 32, // 缩进距离
                ),
                Container(
                  width: double.infinity,
                  child: Text('ActionChip: $_action'),
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag) {
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        setState(() {
                          _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.green,
                  height: 32,
                  // indent: 32, // 缩进距离
                ),
                Container(
                  width: double.infinity,
                  child: Text('FliterChip: $_selected'),
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag) {
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value) {
                        setState(() {
                          if (_selected.contains(tag)) {
                            _selected.remove(tag);
                          } else {
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.green,
                  height: 32,
                  // indent: 32, // 缩进距离
                ),
                Container(
                  width: double.infinity,
                  child: Text('ChoiceChip: $_choice'),
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag) {
                    return ChoiceChip(
                      label: Text(tag),
                      selected: _choice == tag,
                      onSelected: (value) {
                        setState(() {
                          _choice = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _tags = ['Baidu', 'Google', 'Yahoo', 'SoHu', 'KuGou'];
            _selected = [];
            _choice = '';
          });
        },
        child: Icon(
          Icons.restore,
        ),
      ),
    );
  }
}
