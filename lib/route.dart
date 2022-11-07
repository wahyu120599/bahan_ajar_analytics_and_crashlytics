import 'package:flutter/material.dart';
import 'package:myapp/screen/homescreen.dart';
import 'package:myapp/screen/otherscreen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case '/':
        return PageRouteBuilder<dynamic>(
            pageBuilder: (_, __, ___) => const Homescreen(),
            settings: RouteSettings(name: setting.name),
            transitionsBuilder: (_, Animation<double> a, __, Widget c) =>
                FadeTransition(opacity: a, child: c));
      case '/OtherScreen':
        return PageRouteBuilder<dynamic>(
            pageBuilder: (_, __, ___) => const OtherScreen(),
            settings: RouteSettings(name: setting.name),
            transitionsBuilder: (_, Animation<double> a, __, Widget c) =>
                FadeTransition(opacity: a, child: c));
      default:
        return MaterialPageRoute<dynamic>(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('/no route'),
                  ),
                ));
    }
  }
}
