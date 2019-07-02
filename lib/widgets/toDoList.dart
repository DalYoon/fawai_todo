import "package:flutter/material.dart";
import "../data.dart";

import "./ToDo.dart";

class ToDoList extends StatefulWidget {
  final List<ToDoModel> toDos;
  final toggleToDo;

  ToDoList({@required this.toDos, this.toggleToDo});

  @override
  _ToDoList createState() => _ToDoList(toDos: toDos, toggleToDo: toggleToDo);
}

class _ToDoList extends State<ToDoList> {
  final List<ToDoModel> toDos;
  final toggleToDo;

  _ToDoList({@required this.toDos, @required this.toggleToDo});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        toDos
            .asMap()
            .map((index, toDo) => MapEntry(
                index,
                Card(
                  child: ListTile(
                    title: ToDo(
                        title: toDo.title,
                        isDone: toDo.isDone,
                        isEditing: toDo.isEditing),
                    onTap: () => toggleToDo(index),
                  ),
                )))
            .values
            .toList(),
      ),
    );
  }
}
