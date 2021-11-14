// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:teacher_bahaa_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF48426D),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xFFECC08B),
        ),
        scaffoldBackgroundColor: Color(0xFF48426D),
        cardColor: Color(0xFFECC08B),
        textTheme: TextTheme(
          headline5:
              TextStyle(color: Color(0xFF48426D), fontWeight: FontWeight.bold),
          headline6: TextStyle(color: Color(0xFF48426D)),
          bodyText2: TextStyle(color: Color(0xFF48426D)),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
