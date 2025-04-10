import 'package:flutter/material.dart';
import 'package:flutter_lictproject/MobDesgin.dart';
import 'package:flutter_lictproject/NestedContainer.dart';
import 'package:flutter_lictproject/RowColumneg.dart';
import 'package:flutter_lictproject/button_example.dart';
import 'package:flutter_lictproject/counter.dart';
import 'package:flutter_lictproject/homepage.dart';
import 'package:flutter_lictproject/image.dart';
import 'package:flutter_lictproject/sizebox_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 104, 227, 10),
        ),
      ),
      home: SizeboxExample(),
      // ButtonExample(),
      // CounterApp(),
      // Mobdesgin(),

      // IMageA(), //yo line ma garyem class lai call garne
      // Rowcolumneg(),
      //Homepage(), //yo line ma garyem class lai call garne
      // Nestedcontainer()      hompage.dart file lai call garyem class
    );
  }
}
