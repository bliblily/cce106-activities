
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF8F7FF),
        appBar: AppBar(
          title: const Text('Stack Widget and Image Activity',
          style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 223, 161, 186),
          foregroundColor: Colors.white,
        ),

        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Stack(
                  children: [
                    Container(width: 100, height: 100, color: Colors.red),
                    Container(width: 90, height: 90, color: Colors.blue),
                    Container(width: 80, height: 80, color: Colors.green),
                    Container(width: 70, height: 70, color: Colors.yellow),
                    Container(width: 60, height: 60, color: Colors.black),
                    Container(width: 50, height: 50, color: Colors.purple),
                  ],
                ),

                const SizedBox(height: 20),
                Column(
                  children: [
                    Image.asset(
                      'assets/male1.jpg',
                      width: 200,
                      height: 150,
                    ),
                    const SizedBox(height: 10),

                    Image.asset(
                      'assets/female.jpg',
                      width: 200,
                      height: 150,
                    ),
                    const SizedBox(height: 10),

                    Image.asset(
                      'assets/male2.jpg',
                      width: 200,
                      height: 150,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

