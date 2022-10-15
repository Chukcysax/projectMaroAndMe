import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoginScreen());
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            " Hey there",
            style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            "Welcome Back!",
            style: TextStyle(
                color: Colors.black,
                fontSize: 44.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 44.0,
          ),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Enter user email",
              prefix: Icon(Icons.mail, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 26.0,
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Enter Password",
                prefix: Icon(
                  Icons.lock,
                  color: Colors.black,
                )),
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.blue),
          ),
          const SizedBox(
            height: 88.0,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: const Color(0xFF0069FE),
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              onPressed: () {},
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
