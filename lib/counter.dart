import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  // interger sadaiii override ko mataii hunxw
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        toolbarHeight: 80,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              // counter ko value lai string ma convert garne
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            if (counter == 0)
              const Text(
                "Zero",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 77, 169, 177),
                ),
              )
            else if (counter > 0)
              const Text(
                "Positive",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 255, 8),
                ),
              )
            else if (counter < 0)
              const Text(
                "Negative",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              // counter = counter + 1;
              setState(() {
                counter++;
                // counter ko value lai increment garne
              });
              print(counter);
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter--;
                // counter ko value lai decrement garne
              });
              print(counter);
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
