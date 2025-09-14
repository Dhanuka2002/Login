import 'package:flutter/material.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 16, color: Colors.cyan),
              )
            ],
          ),
        ),
      ),
    );
  }
}
