import 'package:flutter_template/style/theme/my_app_bar_theme.dart';
import 'package:flutter_template/style/theme/my_bottom_navigation_bar_theme.dart';
import 'package:flutter_template/style/theme/my_card_theme.dart';
import 'package:flutter_template/style/theme/my_dialog_theme.dart';
import 'package:flutter_template/style/theme/my_text_button_theme.dart';

class AppTheme
    with
        MyAppBarTheme,
        MyBottomNavigationBarTheme,
        MyTextButtonTheme,
        MyDialogTheme,
        MyCardTheme {
  static final AppTheme _instance = AppTheme._internal();

  factory AppTheme() => _instance;

  AppTheme._internal();
}
