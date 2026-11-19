import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign in",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text("It was popularized in 1960 with the release of letraset",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      // bottomNavigationBar: ,
      // floatingActionButton: ,
      // drawer: ,
    );
  }
}
