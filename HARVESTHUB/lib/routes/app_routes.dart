import 'package:flutter/material.dart';
import 'package:tesssss/presentation/login_page_screen/login_page_screen.dart';

class AppRoutes {
  static const String loginPageScreen = '/login_page_screen';

  static Map<String, WidgetBuilder> routes = {
    loginPageScreen: (context) => LoginPageScreen()
  };
}
