import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input_page.dart';
import 'ResultScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF3A281A),
        appBarTheme: const AppBarTheme(
          color: bg_col,
          titleTextStyle: TextStyle(
            fontFamily: 'Market_Deco',
            fontWeight: FontWeight.w900,
            color: Color(0xFF3A281A),
            fontSize: 20,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
      },
    );
  }
}
