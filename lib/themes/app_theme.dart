import 'package:flutter/material.dart';
import 'package:flutter_application_5/themes/custom_theme.dart';
import 'package:flutter_application_5/themes/dark_theme.dart';
import 'package:flutter_application_5/themes/light_theme.dart';

class AppTheme {
  static CustomTheme theme = DarkTheme.instance;
  static ThemeData get themeData => theme.themeData;

  static void changeTheme() {
    if (theme is DarkTheme) {
      theme = LightTheme.instance;
    } else {
      theme = DarkTheme.instance;
    }
  }
}
