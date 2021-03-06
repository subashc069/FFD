import 'package:flutter/material.dart';
import 'main.dart';
Widget buildColumn(context){
  if (MediaQuery.of(context).orientation == Orientation.landscape) {
    return _buildOneLargeRow();
  } else {
    return _buildTwoSmallRows();
  }
}

Widget _buildOneLargeRow() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildRoundedBox("Aardvark"),
          buildRoundedBox("Baboon"),
          buildRoundedBox("Unicorn"),
          buildRoundedBox("Eel"),
          buildRoundedBox("Emu"),
          buildRoundedBox("Platypus"),
        ],
      ),
    ],
  );
}

Widget _buildTwoSmallRows() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildRoundedBox("Aardvark"),
          buildRoundedBox("Baboon"),
          buildRoundedBox("Unicorn"),
        ],
      ),
      SizedBox(
        height: 30.0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildRoundedBox("Eel"),
          buildRoundedBox("Emu"),
          buildRoundedBox("Platypus"),
        ],
      ),
    ],
  );
}

Widget _buildRowOfThree() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
//      buildRoundedBox("Cat"),
//      buildRoundedBox("Dog"),
//      buildRoundedBox("Ape"),
//      buildRoundedBox("Ox"),
//      buildRoundedBox("HEn"),
      _buildExpandedBox("cat"),
      _buildExpandedBox("Dog"),
      _buildExpandedBox("Rat"),
      _buildExpandedBox("Cow"),
      _buildExpandedBox("Horse"),
      _buildExpandedBox("Coby"),
    ],
  );
}

Widget _buildExpandedBox(String label, {double height = 88.0}){
  return Expanded(
    child: buildRoundedBox(label, height:height),
  );
}