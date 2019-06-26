import "package:flutter/material.dart";
import "./Presenter.dart";

class ListHeader extends StatefulWidget {
  @override
  ListHeaderContainer createState() => ListHeaderContainer();
}

class ListHeaderContainer extends State<ListHeader> {
  @override
  Widget build(BuildContext context) {
    return ListHeaderPresenter();
  }
}
