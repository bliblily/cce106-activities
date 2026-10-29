import 'package:flutter/material.dart';

void main() {
  runApp(const EdgeInsetsDemo());
}

class EdgeInsetsDemo extends StatelessWidget {
  const EdgeInsetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF8F7FF),
        appBar: AppBar(
          title: const Text('Peralta_Activity 4',
          style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 238, 208, 174),
          foregroundColor: Colors.white,
        ),

        body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
                  color: Colors.red,
                  padding: const EdgeInsets.all(30.0),
                  child: const Text('EdgeInsets.all(30)', style: TextStyle(fontSize: 13),),
                ),

                const SizedBox(height: 20),
                Container(
                  color: Colors.yellow,
                  padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                  child: const Text('EdgeInsets.symmetric(horizontal: 40, vertical: 10)', style: TextStyle(fontSize: 13),),
                ),

                const SizedBox(height: 20), 
                Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.only(left: 30.0, top: 10.0, right: 5.0, bottom: 20.0),
                  child: const Text('EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)', style: TextStyle(fontSize: 13, color: Colors.white),),
                ),

                const SizedBox(height: 20),
                Container(
                  color: Colors.green,
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
                  child: const Text('EdgeInsets.fromLTRB(10, 20, 30, 40)', style: TextStyle(fontSize: 13, color: Colors.white),),
                ),
              ],
            ),
        ),
          ),      
          );
  }
}