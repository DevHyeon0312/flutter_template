import 'package:flutter/material.dart';

mixin MyTextButtonTheme {
  final TextButtonThemeData _textButtonThemeLight = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.black),
      overlayColor: MaterialStateProperty.all(Colors.black.withOpacity(0.1)),
      shape: MaterialStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    ),
  );
  get textButtonThemeLight => _textButtonThemeLight;

  final TextButtonThemeData _textButtonThemeDark = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white),
      overlayColor: MaterialStateProperty.all(Colors.white.withOpacity(0.1)),
      shape: MaterialStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    ),
  );
  get textButtonThemeDark => _textButtonThemeDark;
}
