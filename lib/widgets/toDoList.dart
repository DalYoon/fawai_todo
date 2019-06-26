import "package:flutter/material.dart";

class ToDoList extends StatefulWidget {
  @override
  _ToDoListContainer createState() => _ToDoListContainer();
}

class _ToDoListContainer extends State<ToDoList> {
  List<String> _todos = ["first", "second"];

  addToDo() {
    setState(() {
      _todos.add("added");
    });
  }

  @override
  Widget build(BuildContext context) {
    return _ToDoListPresenter(
      toDoList: _todos,
      addToDo: addToDo,
    );
  }
}

class _ToDoListPresenter extends StatelessWidget {
  final List<String> toDoList;
  final addToDo;

  _ToDoListPresenter({@required this.toDoList, this.addToDo});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        this
            .toDoList
            .map((todo) => Card(
                  child: ListTile(
                    title: Text(todo),
                    onTap: this.addToDo,
                  ),
                ))
            .toList(),
      ),
    );
    ;
  }
}
