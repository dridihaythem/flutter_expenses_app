import 'package:flutter/material.dart';
import 'package:flutter_application_5/themes/custom_theme.dart';

class DarkTheme extends CustomTheme {
  static DarkTheme? _instance;
  static DarkTheme get instance => _instance ??= DarkTheme._init();

  @override
  late ColorScheme kColorSchema;
  @override
  late ThemeData themeData;

  DarkTheme._init() {
    kColorSchema = ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 96, 59, 181),
      brightness: Brightness.dark,
    );
    themeData = ThemeData.dark().copyWith(
      useMaterial3: true,
      scaffoldBackgroundColor: kColorSchema.surface,
      colorScheme: kColorSchema,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: kColorSchema.primaryContainer,
        foregroundColor: kColorSchema.onPrimaryContainer,
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
            titleLarge: ThemeData().textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: kColorSchema.onPrimaryContainer,
                ),
            titleMedium: ThemeData().textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: kColorSchema.onPrimaryContainer,
                ),
            titleSmall: ThemeData().textTheme.titleSmall!.copyWith(
                  color: kColorSchema.onPrimaryContainer,
                ),
            bodySmall: ThemeData().textTheme.bodySmall!.copyWith(
                  color: kColorSchema.onPrimaryContainer,
                ),
          ),
      snackBarTheme: const SnackBarThemeData().copyWith(
        backgroundColor: kColorSchema.error,
        insetPadding: const EdgeInsets.all(16),
        behavior: SnackBarBehavior.floating,
      ),
      dialogTheme: const DialogTheme().copyWith(
        backgroundColor: kColorSchema.primaryContainer,
        contentTextStyle: TextStyle(
          color: kColorSchema.onPrimaryContainer,
        ),
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          side: BorderSide.none,
        ),
        titleTextStyle: ThemeData().textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: kColorSchema.onPrimaryContainer,
            ),
      ),
    );
  }
}
