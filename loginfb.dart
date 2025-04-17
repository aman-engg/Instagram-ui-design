import 'package:flutter/material.dart';

class Loginfb extends StatelessWidget {
  const Loginfb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login With Facebook'),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 700,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "lib/assets/images/facebook.png",
                height: 150,
                width: 200,
              ),
              const SizedBox(height: 3),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Enter username or email',
                    filled: true,
                    fillColor: const Color.fromARGB(40, 243, 244, 247),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter password",
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: const Color.fromARGB(40, 243, 244, 247),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  maxLength: 5,
                  obscureText: true,
                ),
              ),
              const Text(
                "Forgot Password",
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
