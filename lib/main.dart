import 'package:flutter/material.dart';
import 'package:my_first_app/welcome_page.dart';
import 'login_page.dart';
import 'register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true, // modern look, optional
      ),
      // Start on the Login page
      home: const RegisterPage(),

      // Define routes
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/welcome':(context) => const WelcomePage(),
      },
    );
  }
}
