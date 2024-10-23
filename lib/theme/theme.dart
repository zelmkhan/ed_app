import 'package:flutter/material.dart';

final appTheme = ThemeData(
    useMaterial3: false,
    appBarTheme: AppBarTheme(
      surfaceTintColor: Colors.black,
      titleTextStyle: const TextStyle(
        fontSize: 18.0,
        color: Colors.white,
        fontFamily: "Roobert",
      ),
      iconTheme: IconThemeData(
        color: Colors.blueGrey.shade300,
      ),
    ),
    textTheme: const TextTheme(
            bodySmall: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            bodyMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            bodyLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            displaySmall: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            displayLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            displayMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            labelLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            labelMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            labelSmall: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16.0),
            titleMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16.0),
            titleSmall: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16.0),
            headlineLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            headlineMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            headlineSmall: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
    dialogBackgroundColor: Colors.grey.shade800,
    fontFamily: "Roobert",
    cardColor: Colors.grey.shade800,
    canvasColor: Colors.white,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: const Color.fromARGB(255, 24, 30, 37),
    hintColor: Colors.grey.shade700,
    colorScheme: ColorScheme.fromSwatch().copyWith(
        onPrimary: Colors.greenAccent,
        primary: Colors.black,
        brightness: Brightness.dark,
        primaryContainer: Colors.blueGrey.shade300,
        secondary: Colors.white,
        surface: Colors.green,
        onSurface: Colors.white));
