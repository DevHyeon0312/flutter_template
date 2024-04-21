import 'package:flutter/material.dart';

mixin MyDialogTheme {
  final DialogTheme _dialogThemeLight = const DialogTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    shadowColor: Colors.white,
    surfaceTintColor: Colors.white,
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
    contentTextStyle: TextStyle(color: Colors.black, fontSize: 16),
    iconColor: Colors.black,
    actionsPadding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
  get dialogThemeLight => _dialogThemeLight;

  final DialogTheme _dialogThemeDark = const DialogTheme(
    backgroundColor: Colors.black,
    elevation: 0,
    shadowColor: Colors.black,
    surfaceTintColor: Colors.black,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    contentTextStyle: TextStyle(color: Colors.white, fontSize: 16),
    iconColor: Colors.white,
    actionsPadding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
  get dialogThemeDark => _dialogThemeDark;
}
