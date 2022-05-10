import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ScreenTwo
class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    print("Build StatefulWidget");
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("count: $count"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
