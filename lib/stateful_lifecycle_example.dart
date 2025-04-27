import 'package:flutter/material.dart';
import 'package:flutter_lictproject/todo.dart';

class StatefulLifecycleExample extends StatefulWidget {
  const StatefulLifecycleExample({super.key});

  @override
  State<StatefulLifecycleExample> createState() =>
      _StatefulLifecycleExampleState();
}

class _StatefulLifecycleExampleState extends State<StatefulLifecycleExample> {
  // This is the state class for StatefulLifecycleExample
  @override
  void initState() {
    print(
      "initState called",
    ); // This method is called when the widget is first created
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super
        .didChangeDependencies(); // This method is called when the widget's dependencies change
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super
        .dispose(); // This method is called when the widget is removed from the widget tree
  }

  Todo todo = Todo(
    Title: "title",
    Description: "Description",
    isCompleted: false,
  );
  List<Todo> todos = [
    Todo(Title: "title", Description: "Description", isCompleted: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
