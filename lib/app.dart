import 'package:flutter/material.dart';
import 'package:flutter_application_5/themes/app_theme.dart';
import 'package:flutter_application_5/ui/screens/home_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  void _changeTheme() {
    setState(() {
      print('change theme');
      AppTheme.changeTheme();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.themeData,
      home: HomeScreen(changeTheme: _changeTheme),
    );
  }
}
