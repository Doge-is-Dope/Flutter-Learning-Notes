import 'package:flutter/material.dart';
import 'package:firebase_sample/ui/home_page.dart';
import 'package:firebase_sample/ui/landing_page.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case 'landing':
        return MaterialPageRoute(builder: (_) => LandingPage());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
