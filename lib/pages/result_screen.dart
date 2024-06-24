import 'package:dockingflutter/pages/introduction_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String field1;
  final String field2;

  const ResultScreen({super.key, required this.field1, required this.field2});

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
                'Field 1: $field1',
              ),
              Text(
                'Field 2: $field2',
              ),
              const Spacer(),
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