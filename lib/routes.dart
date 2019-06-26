import "screens/Home.dart";
import "screens/Detail.dart";

class Routes {
  static final home = "/";
  static final detail = "/detail";

  static final router = {
    home: (context) => Home(),
    detail: (context) => Detail(),
  };
}
