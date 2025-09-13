import 'package:flutter/material.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),

              Icon(
                Icons.verified_user,
                size: 100,
              ),

              SizedBox(height: 50),

              Text(
                'Register Now',
                style: TextStyle(color: Colors.black,fontSize: 24),
              ),

              SizedBox(height: 50,),

              //username text field
              Padding(
                padding: EdgeInsets.all(24.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your name",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              //password text field
              Padding(
                padding: EdgeInsets.only(left: 24.0,right: 24.0,bottom: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 24.0, top: 4.0,right: 24.0,bottom: 15.0),
                child: TextField(
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
                    onPressed: () {
                      print("Sign In button pressed");
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Sign Up",
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
                    "Already user? ",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text(
                      "Sign In",
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
        ),
      ),
    );
  }
}
