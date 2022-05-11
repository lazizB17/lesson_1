import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  static const id = "/detail_screen";
  final String? name;

  const DetailScreen({Key? key, this.name}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.name!), // widget class DetailScreen ga murojat qiladi
        backgroundColor: Colors.red,
        centerTitle: true,  // yozuvni o'rtaga o'tkazadi
      ),
    );
  }
}

