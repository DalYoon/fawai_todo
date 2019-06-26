import "package:flutter/material.dart";

class ListHeader extends StatelessWidget {
  final addToDo;

  ListHeader({this.addToDo});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
                this.addToDo();
                // Navigator.pushNamed(context, Routes.detail);
              }),
        ]);
  }
}
