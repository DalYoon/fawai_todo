import "package:flutter/material.dart";

class ToDo extends StatelessWidget {
  final title;
  final isDone;
  final isEditing;

  ToDo({@required this.title, @required this.isDone, @required this.isEditing});

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (isEditing == true) {
      child = Text(title);
    } else {
      child = Text(
        title,
        style: TextStyle(
          decoration: _decorator(isDone),
        ),
      );
    }
    return child;
  }

  TextDecoration _decorator(bool isDone) {
    TextDecoration decoration;

    if (isDone)
      decoration = TextDecoration.lineThrough;
    else
      decoration = TextDecoration.none;

    return decoration;
  }
}
