import 'package:flutter/material.dart';

class Nestedcontainer extends StatelessWidget {
  const Nestedcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nested Container'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 50, left: 50, right: 50, bottom: 50),
          width: 300,
          height: 500,
          decoration: BoxDecoration(color: Colors.blueGrey),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(color: Colors.amber),
            alignment: Alignment.center,
            child: Text(
              'Hello',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
