import 'package:flutter/material.dart';

//stl to import garne Homepage class lai
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            border: Border.all(color: Colors.green, width: 5),
          ),
          alignment: Alignment.bottomRight,
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
    );

    //   appBar: AppBar(
    //     title: Text('Home Page'),
    //     centerTitle: true,
    //     backgroundColor: Colors.deepPurple,
    //   ),
    //   body: Center(
    //     child: Container(
    //       width: 200,
    //       height: 100,
    //       alignment: Alignment.center,
    //       decoration: BoxDecoration(
    //         //decorauion vitrw color rw border aaunw parxw natrw error aaauxw
    //         color: Colors.amber,
    //         borderRadius: BorderRadius.only(
    //           bottomLeft: Radius.circular(20),
    //           topRight: Radius.circular(20),
    //         ),
    //         border: Border.all(color: Colors.cyan, width: 5),
    //       ),
    //       child: Text(
    //         "Hello",
    //         style: TextStyle(color: Colors.white, fontSize: 20),
    //       ),
    //     ),
    //     // child: Text(
    //     //   "Hello World",
    //     //   style: TextStyle(
    //     //     fontSize: 24,
    //     //     color: Colors.blueGrey,
    //     //     fontFamily: 'RobotoMono',
    //     //     fontWeight: FontWeight.bold,
    //     //     letterSpacing: 8,
    //     //   ),
    //     // ),
    //   ), //right click in text and select refactor to extract widget in center to make center
    // );
  }
}
