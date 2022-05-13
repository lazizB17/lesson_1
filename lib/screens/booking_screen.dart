import 'package:flutter/material.dart';
import 'package:lesson_1/screens/result_screen.dart';

class BookingScreen extends StatefulWidget {
  static const id = "/booking_screen";

  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Booking '),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Center(
                child: Text("Do you want this stadium busy ?"),
                )),
            Expanded(
                child: Center(
              child: FlatButton(
                  color: Colors.red,
                  textColor: Theme.of(context).buttonColor,
                  onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ResultScreen()));
                  },
                  child: Text(
                    "Booked.",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  )),
            )),
          ],
        ),
      ),
    );
  }
}

// Expanded(
// child: Center(
// child: FlatButton(
// color: Colors.red,
// textColor: Theme.of(context).buttonColor,
// onPressed: () {
// Navigator.push(context,
// MaterialPageRoute(builder: (context) => const DetailScreen(name: "Stadion 1",)));
// },
// child: Text(
// "Stadion 1",
// style: TextStyle(fontSize: 22, color: Colors.white),
// )),
// )),