import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: GymMartLogin()));
}

class GymMartLogin extends StatelessWidget {
  const GymMartLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GymMart"),
        backgroundColor: Color.fromARGB(255, 70, 188, 248),
      ),
      body: const LogginBody(),
    );
  }
}

class LogginBody extends StatefulWidget {
  const LogginBody({super.key});

  @override
  State<LogginBody> createState() => _LogginBodyState();
}

class _LogginBodyState extends State<LogginBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView( // prevents overflow on small screens
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // REGISTER NOW Text
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
              child: Text(
                "REGISTER NOW...",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36, // reduce font if needed
                  color: Color.fromARGB(255, 70, 188, 248),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // First Name TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Enter First Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            // You can add more TextFields or buttons here

          ],
        ),
      ),
    );
  }
}
