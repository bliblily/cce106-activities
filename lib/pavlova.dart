import 'package:flutter/material.dart';

void main() {
  runApp(const Pavlova());
}

class Pavlova extends StatelessWidget {
  const Pavlova({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar (title: const Text('Peralta_Activity 3',
      style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,  
      backgroundColor: const Color.fromARGB(255, 70, 17, 17),
      ),   
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/pavlova.jpg', fit: BoxFit.cover),  
          Padding(padding:  const EdgeInsets.all(16.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Strawberry Pavlova',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, usually topped with fruit and whipped cream.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.5
                ),
              ),

              const SizedBox(height: 16),
              Center(child: buildRatingRow()),
              const SizedBox(height: 24),
              buildIconTabs(),
            ],
          ),
          ),
        ],
      ),
    ),
    );
  }

  Widget buildRatingRow() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
      children: 
        List.generate(5, 
        (index) => Icon(
          index < 3 ? Icons.star : Icons.star_border,
          color: Colors.yellow,
          size: 30,
        ),
        ),
    ),

    const SizedBox(width: 20),
    const Text(
      '90 Reviews',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
    ]
  );

  Widget buildIconTab(IconData icon, String label, String value) =>Column(
      children: [
        Icon(icon, color: Colors.yellow, size: 30),
        const SizedBox(height: 5),
        Text(
          label, 
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 12,
          ),
        ),
        
        SizedBox(height: 5),

        Text(value, 
        style: const TextStyle(
          fontSize: 12
          ),
        ),
      ],
    );

    Widget buildIconTabs() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildIconTab(Icons.timer_outlined, 'PREP', '25 min'),
        buildIconTab(Icons.restaurant, 'COOK', '1 hr'),
        buildIconTab(Icons.people_alt_outlined, 'FEEDS', '4-6 hrs'),
      ],
    );




  }
