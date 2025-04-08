import 'package:flutter/material.dart';

class IMageA extends StatelessWidget {
  const IMageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),

      body: SingleChildScrollView(
        child: Column(
          // ListView.builder(
          // #SingleChildScrollView()
          children: [
            Icon(Icons.home, color: Colors.black12, weight: 30),
            Image.network(
              "https://www.premiercarriage.co.uk/uploads/2025/03/22/white-mercedes-g-wagon-for-hire.jpg",
              width: 400,
              height: 600,
              fit: BoxFit.contain,
            ),
            Image.asset(
              "assets/images/na.jpg",
              width: 400,
              height: 600,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );

    //   body: Center(
  }
}
