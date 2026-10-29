import 'package:flutter/material.dart';

void main() {
  runApp(const MainCrossAlignment());
}
class MainCrossAlignment extends StatelessWidget {
  const MainCrossAlignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF8F7FF),
        appBar: AppBar(
          title: const Text('Peralta_Task 4',
          style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 28, 2, 2),
          foregroundColor: Colors.white,
        ),

        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  
          children: [
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
            ),

            Container(
              width: 70,
              height: 70,
              color: Colors.yellow,
            ),

            Container(
              width: 60,
              height: 60,
              color: Colors.blue,
            ),

                ],
              ),
            ),    
          ),
        );
      }
    } 