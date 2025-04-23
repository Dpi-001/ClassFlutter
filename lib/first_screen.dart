import 'package:flutter/material.dart';
import 'package:flutter_lictproject/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SecondScreeneg(name: "First Screen"),
              ),
            );
          },
          child: Text('Next Screen'),
        ),
      ),
    );
  }
}
