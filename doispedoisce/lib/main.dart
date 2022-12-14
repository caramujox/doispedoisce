import 'package:doispedoisce/screens/create_task_screen.dart';
import 'package:doispedoisce/screens/task_screen.dart';
import 'package:doispedoisce/screens/home_screen.dart';
import 'package:doispedoisce/screens/login_screen.dart';
import 'package:doispedoisce/screens/register_screen.dart';
import 'package:doispedoisce/screens/splash_screen.dart';
import 'package:doispedoisce/screens/welcome_screen.dart';
import 'package:doispedoisce/util/const_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: const WelcomeScreen(title: 'Welcome Screen'),
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.id: (context) =>
            const SplashScreen(title: "Splash Screen"),
        RegisterScreen.id: (context) =>
            const RegisterScreen(title: "Register Screen"),
        LoginScreen.id: (context) => const LoginScreen(title: "Login Screen"),
        HomeScreen.id: (context) => const HomeScreen(title: "Home Screen"),
        TaskScreen.id: (context) => const TaskScreen(title: "Task Screen"),
        CreateTaskScreen.id: (context) =>
            const CreateTaskScreen(title: "CreateTask Screen")
      },
    );
  }
}
