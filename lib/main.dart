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
      locale: Locale('ar'),
      theme: ThemeData(
        primaryColor: Color(0xFF1A1A1A),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xFF97D9EE),
        ),
        backgroundColor: Color(0xFFE5E28A),
        canvasColor: Color(0xFFB3EB98),
        scaffoldBackgroundColor: Color(0xFF1A1A1A),
        cardColor: Color(0xFF97D9EE),
        textTheme: TextTheme(
          headline5:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          headline6: TextStyle(color: Colors.black),
          bodyText2: TextStyle(color: Colors.black),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
