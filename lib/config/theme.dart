import 'package:flutter/material.dart';

final kDarkTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.indigo,
  ).copyWith(secondary: Colors.black87),
  scaffoldBackgroundColor: Colors.blue[900],
  primaryColor: Colors.white,
  appBarTheme: const AppBarTheme(
      color: Colors.black87,
      titleTextStyle: TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      )),
  textTheme: const TextTheme(
    headline6: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
      color: Colors.white,
    ),
  ),
);

final kLightTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.amber,
  ).copyWith(secondary: Colors.deepOrange),
  scaffoldBackgroundColor: Colors.blue[200],
  primaryColor: Colors.white,
  appBarTheme: const AppBarTheme(
      color: Colors.deepOrange,
      titleTextStyle: TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      )),
  textTheme: const TextTheme(
    headline6: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
      color: Colors.black,
    ),
  ),
);
