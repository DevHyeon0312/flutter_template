import 'package:flutter/material.dart';

mixin MyTextButtonTheme {
  final TextButtonThemeData _textButtonThemeLight = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(Colors.black),
      overlayColor: WidgetStateProperty.all(Colors.black.withOpacity(0.1)),
      shape: WidgetStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    ),
  );
  get textButtonThemeLight => _textButtonThemeLight;

  final TextButtonThemeData _textButtonThemeDark = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(Colors.white),
      overlayColor: WidgetStateProperty.all(Colors.white.withOpacity(0.1)),
      shape: WidgetStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    ),
  );
  get textButtonThemeDark => _textButtonThemeDark;
}
