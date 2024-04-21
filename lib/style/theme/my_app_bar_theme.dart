import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

mixin MyAppBarTheme {
  final AppBarTheme _appBarThemeLight = const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    shadowColor: Colors.white,
    surfaceTintColor: Colors.white,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ),
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
    iconTheme: IconThemeData(color: Colors.black),
    actionsIconTheme: IconThemeData(color: Colors.black),
    elevation: 0,
    scrolledUnderElevation: 3,
  );
  get appBarThemeLight => _appBarThemeLight;

  final AppBarTheme _appBarThemeDark = const AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    shadowColor: Colors.black,
    surfaceTintColor: Colors.black,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
    ),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    iconTheme: IconThemeData(color: Colors.white),
    actionsIconTheme: IconThemeData(color: Colors.white),
    elevation: 0,
    scrolledUnderElevation: 3,
  );
  get appBarThemeDark => _appBarThemeDark;
}
