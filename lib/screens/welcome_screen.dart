import 'package:flutter/material.dart';
import 'package:lesson_1/screens/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body(),);
  }
}

