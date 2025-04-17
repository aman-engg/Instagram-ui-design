import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("aman_manii"),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(22, 36, 36, 197),
            const Color.fromARGB(255, 69, 4, 75)
          ], begin: Alignment.topLeft, end: Alignment.centerLeft)),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(23)),
                  Center(
                    child: Container(
                        height: 500,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: AssetImage("lib/assets/images/m.jpg"),
                                fit: BoxFit.cover))),
                  ),
                  Padding(padding: EdgeInsets.all(23)),
                  Center(
                    child: Container(
                        height: 500,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: AssetImage("lib/assets/images/co.jpg"),
                                fit: BoxFit.cover))),
                  ),
                  Padding(padding: EdgeInsets.all(23)),
                  Center(
                    child: Container(
                        height: 500,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: AssetImage("lib/assets/images/b.jpg"),
                                fit: BoxFit.cover))),
                  ),
                  Padding(padding: EdgeInsets.all(23)),
                  Center(
                    child: Container(
                        height: 500,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: AssetImage("lib/assets/images/p.jpg"),
                                fit: BoxFit.cover))),
                  ),
                  Padding(padding: EdgeInsets.all(23)),
                  Center(
                    child: Container(
                        height: 500,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: AssetImage("lib/assets/images/m.jpg"),
                                fit: BoxFit.cover))),
                  )
                ]),
          ),
        ));
  }
}
