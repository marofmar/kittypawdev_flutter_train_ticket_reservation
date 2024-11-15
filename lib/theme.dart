import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple,
    brightness: Brightness.light,
  ),
  dividerColor: Colors.grey[400],
  highlightColor: Colors.purple,
  scaffoldBackgroundColor: Colors.grey[200],
  cardColor: Colors.white,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
      backgroundColor: WidgetStatePropertyAll(Colors.purple),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
    ),
  ),
);

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.purple, brightness: Brightness.dark),
  dividerColor: Colors.white24, // 구분선
  highlightColor: Colors.purple,
  scaffoldBackgroundColor: Colors.black12,
  cardColor: Colors.blueGrey, //TODO: 다크테마 카드 컬러 체크
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
      backgroundColor: WidgetStatePropertyAll(Colors.purple),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
    ),
  ),
);
