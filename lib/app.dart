import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'config/theme.dart';
import 'pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: kLightTheme,
      dark: kDarkTheme,
      initial: AdaptiveThemeMode.dark,
      builder: (ThemeData light, ThemeData dark) => MaterialApp(
        title: "Bettings Strategies",
        debugShowCheckedModeBanner: false,
        theme: light,
        darkTheme: dark,
        home: HomePage(),
      ),
    );
  }
}
