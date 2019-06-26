import "package:flutter/material.dart";
import "./Presenter.dart";

class ToDoList extends StatefulWidget {
  @override
  ToDoListContainer createState() => ToDoListContainer();
}

class ToDoListContainer extends State<ToDoList> {
  List<String> todos = ["first", "second"];

  addToDo() {
    setState(() {
      todos.add("added");
    });
  }

  @override
  Widget build(BuildContext context) {
    return ToDoListPresenter(
      toDos: todos,
      addToDo: addToDo,
    );
  }
}
