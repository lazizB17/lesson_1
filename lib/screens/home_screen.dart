import 'package:flutter/material.dart';
import 'package:lesson_1/screens/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  static const id = "/home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? result;

  void openDetail() async {
    /// push
    // I method a:
    // Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailScreen()));
    // I method b:
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DetailScreen(name: "Stadium 1",)));

    // II method a:
    // Navigator.pushNamed(context, DetailScreen.id);
    // II method b:
    // Navigator.of(context).pushNamed(DetailScreen.id);
    /// pushReplacement
    // I method a:
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const DetailScreen()));
    // I method b:
    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const DetailScreen()));

    // II method a:
    // Navigator.pushReplacementNamed(context, DetailScreen.id);
    // II method b:
    // Navigator.of(context).pushReplacementNamed(DetailScreen.id);

    // malumotni tutib olish uchun

    String? value = await Navigator.push(context, MaterialPageRoute(
        builder: (context) => const DetailScreen(
          name: "Stadion 1",
        )));
    setState(() {
      result = value;
    });
    print(result ?? "No data.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Booking Stadions App'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Center(
                  child: FlatButton(
                      color: Colors.red,
                      textColor: Theme.of(context).buttonColor,
                      onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const DetailScreen(name: "Stadion 1",)));
                    },
                      child: Text(
                        "Stadion 1",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      )),
                )),
            Expanded(
                child: Center(
                  child: FlatButton(
                      color: Colors.red,
                      textColor: Theme.of(context).buttonColor,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const DetailScreen(name: "Stadion 2",)));
                      },
                      child: Text(
                        "Stadion 2",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      )),
                )),
            Expanded(
                child: Center(
                  child: FlatButton(
                      color: Colors.red,
                      textColor: Theme.of(context).buttonColor,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const DetailScreen(name: "Stadion 3",)));
                      },
                      child: Text(
                        "Stadion 3",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
