import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ScreenOne
class ScreenOne extends StatelessWidget {
  int count = 0;

  //constructor
  ScreenOne({Key? key}) : super(key: key);

  // method
  void increment() {
    count++;
    print(count);
  }

  @override
  Widget build(BuildContext context) {
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


