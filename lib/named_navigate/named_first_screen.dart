import 'package:flutter/material.dart';
import 'package:flutter_lictproject/app_route.dart';

class NamedFirstScreen extends StatelessWidget {
  const NamedFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Named Navigation First Screen')),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              AppRoutes.secondScreen,
              arguments: 'Hello from First Screen',
            );
          },
          child: const Text('Next'),
        ),
      ),
    );
  }
}
