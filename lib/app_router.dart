import 'package:bloc_project/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class AppRouter 
{
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeView.routeName:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
          settings: settings,
        );
      default:
        return null; 
    }
  }
}