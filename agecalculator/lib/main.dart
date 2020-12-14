import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.brown),
    home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  double age = 0;
  var selectedYear;
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    animation = animationController;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _showPicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime(2018),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    ).then((DateTime dt) {
      setState(() {
        selectedYear = dt.year;
        calculateAge();
      });
    });
  }

  void calculateAge() {
    setState(() {
      age = (2020 - selectedYear).toDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Age Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineButton(
              onPressed: _showPicker,
              child: Text(selectedYear != null
                  ? selectedYear.toString()
                  : "Select your year of birth"),
              borderSide: BorderSide(color: Colors.black, width: 3),
              color: Colors.white,
            ),
            Padding(padding: EdgeInsets.all(20)),
            Text(
              "Your Age is ${age.toStringAsFixed(0)}",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
