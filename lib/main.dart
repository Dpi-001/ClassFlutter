import 'package:flutter/material.dart';
// import 'package:flutter_lictproject/Bmi.dart';
// import 'package:flutter_lictproject/Calculator.dart';
// import 'package:flutter_lictproject/Desgin2.dart';
import 'package:flutter_lictproject/arrayfruit.dart';
// import 'package:flutter_lictproject/first_screen.dart';
// import 'package:flutter_lictproject/listview_builder.dart';
// // import 'package:flutter_lictproject/MobDesgin.dart';
// import 'package:flutter_lictproject/NestedContainer.dart';
// import 'package:flutter_lictproject/RowColumneg.dart';
// import 'package:flutter_lictproject/button_example.dart';
// import 'package:flutter_lictproject/calcu.dart';
// import 'package:flutter_lictproject/counter.dart';
// import 'package:flutter_lictproject/formexample.dart';
// import 'package:flutter_lictproject/homepage.dart';
// import 'package:flutter_lictproject/image.dart';
// import 'package:flutter_lictproject/sizebox_example.dart';
// import 'package:flutter_lictproject/textfield.dart';
// import 'package:flutter_lictproject/textfieldcalcu.dart';
// import 'package:flutter_lictproject/textfieldform.dart';

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
      home: Fruitarrayeg(),
      //  FirstScreen(),
      // CustomListView(),
      // Desgin2M(),
      // Formexample(),
      // CalcuTextForm(),
      // Calceg(),
      // TextfieldExample(),
      // BmiC(), //yo line ma garyem class lai call garne
      // Mobdesgin(),
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
