import 'package:ai39c/view/dashboard/dashboard_screen.dart';
import 'package:ai39c/view/profile/card_screen.dart';
import 'package:ai39c/view/authentication/login_screen.dart';
import 'package:ai39c/view/profile/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarThemeData(
          backgroundColor: Colors.white
        )
      ),
      home: DashboardScreen(),
    );
  }
}