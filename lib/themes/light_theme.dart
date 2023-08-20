import 'package:flutter/material.dart';
import 'package:flutter_application_5/themes/custom_theme.dart';

class LightTheme extends CustomTheme {
  static LightTheme? _instance;
  static LightTheme get instance => _instance ??= LightTheme._init();

  @override
  late ColorScheme kColorSchema;
  @override
  late ThemeData themeData;

  LightTheme._init() {
    kColorSchema = ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 96, 59, 181),
    );
    themeData = ThemeData().copyWith(
      useMaterial3: true,
      scaffoldBackgroundColor: kColorSchema.surface,
      colorScheme: kColorSchema,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: kColorSchema.onPrimaryContainer,
        foregroundColor: kColorSchema.primaryContainer,
        centerTitle: true,
      ),
      cardTheme: const CardTheme().copyWith(
        color: kColorSchema.primaryContainer,
        margin: const EdgeInsets.all(10),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorSchema.onPrimaryContainer,
          foregroundColor: kColorSchema.primaryContainer,
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 8,
          ),
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleMedium: ThemeData().textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: kColorSchema.onPrimaryContainer,
                ),
          ),
      snackBarTheme: const SnackBarThemeData().copyWith(
        backgroundColor: kColorSchema.error,
        insetPadding: const EdgeInsets.all(16),
        behavior: SnackBarBehavior.floating,
      ),
      dialogTheme: const DialogTheme().copyWith(
        // backgroundColor: kColorSchema.primaryContainer,
        contentTextStyle: TextStyle(
          color: kColorSchema.onPrimaryContainer,
        ),
        elevation: 10,
        // surfaceTintColor: Colors.blueGrey,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          side: BorderSide.none,
        ),
      ),
    );
  }
}
