import 'package:flutter/material.dart';

mixin MyBottomNavigationBarTheme {
  final BottomNavigationBarThemeData _bottomNavigationBarThemeLight =
      const BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(size: 28),
    unselectedIconTheme: IconThemeData(size: 24),
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
    backgroundColor: Colors.white,
    unselectedLabelStyle: TextStyle(fontSize: 10),
    selectedLabelStyle: TextStyle(fontSize: 12),
    showSelectedLabels: true,
    showUnselectedLabels: true,
    enableFeedback: true,
    landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
    type: BottomNavigationBarType.shifting,
  );
  get bottomNavigationBarThemeLight => _bottomNavigationBarThemeLight;

  final BottomNavigationBarThemeData _bottomNavigationBarThemeDark =
      const BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(size: 28),
    unselectedIconTheme: IconThemeData(size: 24),
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey,
    backgroundColor: Colors.black,
    unselectedLabelStyle: TextStyle(fontSize: 10),
    selectedLabelStyle: TextStyle(fontSize: 12),
    showSelectedLabels: true,
    showUnselectedLabels: true,
    enableFeedback: true,
    landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
    type: BottomNavigationBarType.shifting,
  );
  get bottomNavigationBarThemeDark => _bottomNavigationBarThemeDark;
}
