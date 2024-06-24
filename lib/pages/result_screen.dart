import 'package:dockingflutter/pages/introduction_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final Map<String, dynamic> result;

  const ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Best Individual: ${result['best_individual']}',
              ),
              const SizedBox(height: 10),
              Text(
                'Time taken by GA: ${result['time_ga']} seconds',
              ),
              const SizedBox(height: 10),
              Text(
                'Navios: ${result['navios']}',
              ),
              const SizedBox(height: 10),
              // Text(
              //   'Fitness History: ${result['fitness_history']}',
              // ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const IntroScreen()),
                        (route) => false,
                  );
                },
                child: const Text('Return to Intro Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
