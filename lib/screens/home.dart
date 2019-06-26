import "package:flutter/material.dart";

import "../widgets/ToDoList/Container.dart";
import "../widgets/ListHeader/Container.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[ListHeader(), ToDoList()],
    ));
  }
}
