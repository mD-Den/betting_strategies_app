import 'package:flutter/material.dart';

final kDarkTheme = ThemeData.dark().copyWith(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.indigo,
  ).copyWith(secondary: Colors.black87),
  scaffoldBackgroundColor: Colors.blue[900],
  primaryColor: Colors.white,
  appBarTheme: const AppBarTheme(
    color: Colors.black87,
  ),
  textTheme: const TextTheme(
    headline6: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
      color: Colors.white,
    ),
    headline5: TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  ),
);

final kLightTheme = ThemeData.light().copyWith(
  appBarTheme: const AppBarTheme(
    color: Colors.blue,
  ),
);
