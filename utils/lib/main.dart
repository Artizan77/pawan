import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //**********************Pop up gibi alert vermek için************ */
  // AlertDialog dialog = AlertDialog(
  //   content: Text("Dialog is up.."),title: Text("Üstüne yazar"),
  // );
  //**********************Pop up gibi alert vermek için end************ */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Utils App")),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("Click Me"),
            color: Colors.redAccent,

            //************************************Only Print on Debug Console************************** */
            onPressed: () => print("İm pressed"),
            //***********************************Only Print on Debug Console end*************************** */

            //*****alert gibi yazar bottom a ******************* */
            //  onPressed: () => Scaffold.of(context).showSnackBar(SnackBar(
            //    content: Text("You Clicked Me."),
            //    duration: Duration(seconds: 3),
            //  )),
            //*****alert gibi yazar bottom a end ******************* */

            //**********************Pop up gibi alert vermek için************ */
            //onPressed: () => showDialog(context: context, child: dialog),
            //**********************Pop up gibi alert vermek için end************ */
          ),
        ),
      ),
    );
  }
}
