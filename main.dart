import 'package:flutter/material.dart';
import 'package:instagram/Createnew.dart';
import 'package:instagram/loginfb.dart';
import 'package:instagram/profile.dart';
import 'package:instagram/loginfb.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      title: 'Instagram Login Page',
      home: MyHomePage(title: 'Instagram Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  String x = "";
  bool obscure = true;
  @override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }

  void user() {
    if (username.text == "aman_manii" && password.text == "123") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Profile()),
      );
    } else {
      setState(() {
        x = "username  or password not found";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  const Color.fromARGB(255, 3, 25, 85),
                  const Color.fromARGB(255, 56, 6, 65),
                  const Color.fromARGB(255, 185, 60, 137)
                ], begin: Alignment.topLeft, end: Alignment.bottomLeft),
              ),
              height: 890,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "lib/assets/images/without.png",
                    height: 200,
                    width: 150,
                  ),
                  Image.asset(
                    "lib/assets/images/instagram.png",
                    height: 100,
                    width: 180,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      controller: (username),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Enter Username or Email',
                        labelStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: const Color.fromARGB(40, 243, 244, 247),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      controller: password,
                      decoration: InputDecoration(
                        labelText: "Enter password",
                        labelStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: const Color.fromARGB(40, 243, 244, 247),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obscure = !obscure;
                              });
                            },
                            icon: Icon(obscure
                                ? Icons.visibility
                                : Icons.visibility_off)),
                      ),
                      keyboardType: TextInputType.number,
                      obscureText: obscure,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.blue, fontSize: 10),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      user();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(250, 38),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text("Login"),
                  ),
                  Text(
                    x,
                    style: TextStyle(fontSize: 13, color: Colors.red),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    ("_____________OR_____________"),
                    style: TextStyle(color: Color.fromARGB(183, 158, 158, 158)),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "lib/assets/images/new.png",
                        height: 30,
                        width: 30,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Loginfb()),
                            );
                          },
                          child: const Text("Login with Facebook")),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Createnew()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: const RoundedRectangleBorder()),
                    child: Text("Create new Account"),
                  ),
                  SizedBox(height: 100),
                  const Text(
                    "Developed by Aman\n          not META",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
