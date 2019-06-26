import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  DetailState createState() => DetailState();
}

class DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        backgroundColor: Color.fromRGBO(255, 121, 121, 1.0),
      ),
    );
  }
}
