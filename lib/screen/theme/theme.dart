import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        surface: Colors.grey.shade100,
        primary: Colors.black,
        secondary: const Color.fromARGB(255, 252, 252, 255),
        tertiary: Colors.black,
        shadow: Colors.grey[400],
        surfaceDim: Colors.white));

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        surface: Colors.grey.shade900,
        primary: Colors.white,
        secondary: Colors.grey.shade800,
        tertiary: Colors.white,
        shadow: Colors.black,
        surfaceDim: Colors.green.shade300));


// backgroundColor: Theme.of(context).colorScheme.surface,