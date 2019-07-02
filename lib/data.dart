import "package:flutter/material.dart";

class ToDoModel {
  ToDoModel(
      {@required this.title, @required this.isDone, @required this.isEditing});

  String title;
  bool isDone;
  bool isEditing;
}
