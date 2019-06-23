import 'package:fawai_todo/detail.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    title: "Fawai To Do",
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            expandedHeight: 150.0,
            backgroundColor: Color.fromRGBO(255, 121, 121, 1.0),
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Fawai To Do'),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_circle),
                tooltip: 'Add new entry',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Detail()));
                },
              ),
            ]),
        _List()
      ],
    ));
  }
}

class _List extends StatefulWidget {
  @override
  _ListContents createState() => _ListContents();
}

class _ListContents extends State<_List> {
  List<String> _todos = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        _todos
            .map((todo) => Card(
                  child: ListTile(title: Text(todo)),
                ))
            .toList(),
      ),
    );
  }
}
