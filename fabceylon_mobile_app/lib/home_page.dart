import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String token;

  HomePage({required this.token});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome!"),
            SizedBox(height: 20),
            Text("Your token: $token"),
          ],
        ),
      ),
    );
  }
}
