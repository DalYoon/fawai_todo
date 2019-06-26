import "package:flutter/material.dart";

class ToDoList extends StatelessWidget {
  final List<String> toDos;
  final addToDo;

  ToDoList({@required this.toDos, this.addToDo});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        this
            .toDos
            .map((todo) => Card(
                  child: ListTile(
                    title: Text(todo),
                    onTap: this.addToDo,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
