import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: GymMartLogin(),
  ));
}

class GymMartLogin extends StatelessWidget {
  const GymMartLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GymMart"),
        backgroundColor: Colors.amber),
        
      );

  }
}