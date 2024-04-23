import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app/route/app_page.dart';
import 'package:flutter_template/app/route/app_route.dart';
import 'package:flutter_template/style/theme/app_theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.initial.name,
      getPages: AppPage.pages,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(),
        canvasColor: Colors.white,
        appBarTheme: AppTheme().appBarThemeLight,
        bottomNavigationBarTheme: AppTheme().bottomNavigationBarThemeLight,
        textButtonTheme: AppTheme().textButtonThemeLight,
        dialogTheme: AppTheme().dialogThemeLight,
        cardTheme: AppTheme().cardThemeLight,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark().copyWith(
          background: const Color(0xff1e1e1e),
        ),
        canvasColor: Colors.black,
        appBarTheme: AppTheme().appBarThemeDark,
        bottomNavigationBarTheme: AppTheme().bottomNavigationBarThemeDark,
        textButtonTheme: AppTheme().textButtonThemeDark,
        dialogTheme: AppTheme().dialogThemeDark,
        cardTheme: AppTheme().cardThemeDark,
      ),
    );
  }
}
