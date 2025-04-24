import 'package:flutter/material.dart';

class SecondScreeneg extends StatelessWidget {
  final List<String> fruitsNames;

  SecondScreeneg({required this.fruitsNames, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Column(
        children: [
          Text(fruitsNames.toString()),
          Center(
            child: FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Back'),
            ),
          ),
        ],
      ),
    );
  }
}
