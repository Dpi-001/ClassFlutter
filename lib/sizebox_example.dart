import 'package:flutter/material.dart';

class SizeboxExample extends StatelessWidget {
  const SizeboxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizeBox Example'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        toolbarHeight: 80,
      ),
      body: SizedBox(
        width:
            double
                .infinity, //height and width ko lagi use hunxa conatiner heavy hunxw tesma dheraii kurw hunxwa
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("I am a Text", style: TextStyle(fontSize: 26))],
        ),
      ),
    );
  }
}
