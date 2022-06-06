import 'package:flutter/material.dart';
import 'package:uno_todo_app/screens/splash_screen.dart';
import 'package:uno_todo_app/screens/welcome_screen.dart';
import 'package:uno_todo_app/themes/theme_of_app.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      home: const SplashScreen(),
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        WelcomeScreen.id: (context) => const WelcomeScreen(),
      },
    );
  }
}
