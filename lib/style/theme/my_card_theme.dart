import 'package:flutter/material.dart';

mixin MyCardTheme {
  final CardTheme _cardThemeLight = const CardTheme(
    clipBehavior: Clip.antiAlias,
    color: Colors.white,
    surfaceTintColor: Colors.white,
    shadowColor: Colors.grey,
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
      side: BorderSide(
        color: Colors.grey,
        width: 0.5,
      ),
    ),
  );

  get cardThemeLight => _cardThemeLight;

  final CardTheme _cardThemeDark = const CardTheme(
    clipBehavior: Clip.antiAlias,
    color: Color(0xff121212),
    surfaceTintColor: Color(0xff121212),
    shadowColor: Colors.grey,
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
      side: BorderSide(
        color: Colors.grey,
        width: 0.5,
      ),
    ),
  );

  get cardThemeDark => _cardThemeDark;
}
