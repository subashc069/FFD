import 'package:flutter/material.dart';

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

class _MyHomePage extends StatefulWidget {
  @override
  __MyHomePageState createState() => __MyHomePageState();
}

const _youAre = 'You Are';
const _compatible = 'compatible with\nDoris D. Developer';

class __MyHomePageState extends State<_MyHomePage> {
  bool _ageSwitchValue = false;
  String _messageToUser = "$_youAre NOT $_compatible";
  double _loveFlutterSliderValue = 1.0;

  ///State
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Are you compatible with Doris?"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            _buildAgeSwitch(),
            _buildLoveSlider(),
            _buildResultArea(),
          ],
        ),
      ),
    );
  }

  ///Build
  Widget _buildAgeSwitch() {
    return Row(
      children: <Widget>[
        Text("Are you 18 or Older?"),
        Switch(value: _ageSwitchValue, onChanged: _updateAgeSwitch)
      ],
    );
  }

  Widget _buildResultArea() {
    return Row(
      children: <Widget>[
        RaisedButton(child: Text("Submit"), onPressed: _updateResults),
        SizedBox(
          width: 15.0,
        ),
        Text(_messageToUser, textAlign: TextAlign.center),
      ],
    );
  }

  Widget _buildLoveSlider() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Text(
            "On Scale of 1 to 10, How much do you love developing flutter app"),
        Slider(
          min: 1.0,
          max: 10.0,
          divisions: 9,
          value: _loveFlutterSliderValue,
          onChanged: _updateLoveFlutterSliderValue,
          label: '${_loveFlutterSliderValue.toInt()}',
        ),
      ],
    );
  }

  void _updateAgeSwitch(bool newValue) {
    setState(() {
      _ageSwitchValue = newValue;
//      _messageToUser = _youAre + (_ageSwitchValue ? " " : " NOT ") + _compatible;
    });
  }

  void _updateResults() {
    setState(() {
      _messageToUser = 'You are' +
          (_loveFlutterSliderValue >= 8 ? " " : " NOT ") +
          _compatible;
    });
  }

  void _updateLoveFlutterSliderValue(double newValue) {
    setState(() {
      _loveFlutterSliderValue = newValue;
      _messageToUser = 'You are' +
          (_loveFlutterSliderValue >= 8 ? " " : " NOT ") +
          _compatible;
    });
  }
}
