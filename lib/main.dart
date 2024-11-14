import 'package:flutter/material.dart';
import 'package:flutter_ticket_reservation_app/pages/home/home_page.dart';
import 'package:flutter_ticket_reservation_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: 마지막에 system으로 변경
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: HomePage() // system
        );
  }
}
