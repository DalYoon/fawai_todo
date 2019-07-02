import "package:flutter/material.dart";

import "../widgets/ListHeader.dart";
import "../widgets/ToDoList.dart";
import "../data.dart";

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  List<ToDoModel> toDos = [
    ToDoModel(title: "first", isDone: false, isEditing: false)
  ];

  addToDo() {
    setState(() {
      toDos.add(ToDoModel(title: "added", isDone: false, isEditing: false));
    });
  }

  toggleToDo(int index) {
    setState(() {
      toDos[index].isDone = !toDos[index].isDone;
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
            toggleToDo: toggleToDo,
          ),
        ],
      ),
    );
  }
}
