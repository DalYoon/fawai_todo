import "screens/home.dart";
import "screens/detail.dart";

class Routes {
  static final home = "/";
  static final detail = "/detail";

  static final router = {
    home: (context) => Home(),
    detail: (context) => Detail(),
  };
}
