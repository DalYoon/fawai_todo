import 'package:flutter/material.dart';
import "./routes.dart";

void main() {
  return runApp(MaterialApp(
    initialRoute: Routes.home,
    routes: Routes.router,
  ));
}
