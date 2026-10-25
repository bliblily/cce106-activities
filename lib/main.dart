
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(name: 'Gwendolyn Lianna Peralta'));
}

class MyApp extends StatefulWidget {
  final String name;

  const MyApp({super.key, required this.name});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _clicked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Greeting Card'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Hello, ${widget.name}!',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _clicked = true;
                  });
                },
                child: const Text('Click me'),
              ),
              if (_clicked)
                const Text('Clicked successfully!'),
            ],
          ),
        ),
      ),
    );
  }
}

String formatFullName(String first, String middle, String last) {
  return '$first $middle $last';
}
