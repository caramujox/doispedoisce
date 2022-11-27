import 'package:doispedoisce/screens/goals_screen.dart';
import 'package:doispedoisce/screens/home_screen.dart';
import 'package:doispedoisce/screens/login_screen.dart';
import 'package:doispedoisce/screens/register_screen.dart';
import 'package:doispedoisce/screens/splash_screen.dart';
import 'package:doispedoisce/screens/welcome_screen.dart';
import 'package:doispedoisce/util/const_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2P2C - Task Manager',
      theme: ThemeData(
          primarySwatch: ConstColors.ccBackgroundM,
          scaffoldBackgroundColor: ConstColors.ccBackgroundM.shade900),
      home: const GoalsScreen(title: 'LoginScreen Screen'),
      debugShowCheckedModeBanner: false,
    );
  }
}
