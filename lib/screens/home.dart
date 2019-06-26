import "package:flutter/material.dart";

import "../widgets/ListHeader.dart";
import "../widgets/ToDoList.dart";

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  List<String> toDos = ["first", "second"];

  addToDo() {
    setState(() {
      toDos.add("added");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          ListHeader(
            addToDo: addToDo,
          ),
          ToDoList(
            toDos: toDos,
            addToDo: addToDo,
          ),
        ],
      ),
    );
  }
}
