import 'package:flutter/material.dart';

class NamedSecondScreen extends StatelessWidget {
  const NamedSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String value = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: const Text('Named Navigation Second Screen')),
      body: Center(
        child: Text(
          value,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

//mounted
//init state
//didChangeDependencies
//build //context
// dispose
