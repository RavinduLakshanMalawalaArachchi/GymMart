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
        
        backgroundColor: const Color.fromARGB(255, 70, 188, 248),
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
  @override
Widget build(BuildContext context) {
  return Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // 🔵 GymMart text (centered)
          const Text(
            "GymMart",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 70, 188, 248),
            ),
          ),

          const SizedBox(height: 20),

          // 🟦 Card
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "REGISTER NOW...",
                      style: TextStyle(
                        fontSize: 32,
                        color: Color.fromARGB(255, 70, 188, 248),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),

                    Row(
                      children: const [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'First Name',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Last Name',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 15,),

                    Column(

                      

                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder()
                          ),

                          

                        )
                      ],

                    ),

                         SizedBox(height: 15,),

                    Column(

                      

                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder()
                          ),

                          

                        )
                      ],

                    ),

                    SizedBox(height: 15,),

                        

                    Column(

                      

                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder()
                          ),

                          

                        )
                      ],

                    ),

                    SizedBox(height: 15,),

                    SizedBox(
                      width: 200,
                      child: FilledButton(onPressed: (){}, child: Text("Register"),
                      style: FilledButton.styleFrom(backgroundColor: const Color.fromARGB(255, 18, 136, 195),),
                      
                      ),
                    ),
                    


                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

  }

