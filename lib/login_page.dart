import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _login() {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("All fields are required")),
      );
      return;
    }

    // ✅ Check username and password
    if (username == "user" && password == "1") {
      Navigator.pushReplacementNamed(context, '/welcome'); // go to Register
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid Credentials")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child:Center(
          child:Column(
            children: [
              SizedBox(height: 50),

              Icon(
                Icons.lock,
                size: 100,
              ),

              SizedBox(height: 50),

              Text(
                  'Welcome back',
                  style: TextStyle(color: Colors.black,fontSize: 24),
              ),

              SizedBox(height: 50,),

              //username text field
              Padding(
                padding: EdgeInsets.all(24.0),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: "Enter your name",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              //password text field
              Padding(
                padding: EdgeInsets.only(left: 24.0, top: 4.0,right: 24.0,bottom: 15.0),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "Enter your password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              // 🔘 Sign In Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: SizedBox(
                  width: double.infinity, // full width
                  child: ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Sign In",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Haven't you registered yet? ",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        )
      ),
    );
  }
}
