import 'package:flutter/material.dart';
import 'package:flutter_lictproject/NestedContainer.dart';
import 'package:flutter_lictproject/RowColumneg.dart';
import 'package:flutter_lictproject/homepage.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Rowcolumneg(),
      //Homepage(), //yo line ma garyem class lai call garne
      // Nestedcontainer()      hompage.dart file lai call garyem class
    );
  }
}
