// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'build_column.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.grey[50],
        child: Container(
          color: Colors.grey[500],
          margin: EdgeInsets.all(20.0),
//          padding: EdgeInsets.all(30.0),
          child: buildColumn(context),
        ),

      ),
    );
  }
}

Widget buildTitleText(){
  return Text("My Pet shop",
    textScaleFactor: 3.0,
    textAlign: TextAlign.center,);
}

Widget buildRoundedBox(String label, {double height = 88.0}) {
  return Container(
    height: height,
    width: 88.0,
    alignment: Alignment(0.0, 0.0),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(),
      borderRadius: BorderRadius.circular(20.0)
    ),
    child: Text(label, textAlign: TextAlign.center,),
  );
}
