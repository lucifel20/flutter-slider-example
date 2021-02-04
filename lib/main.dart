import 'package:flutter/material.dart';

void main() => runApp(SliderExample());

class SliderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    const String APP_TITLE = 'Flutter Slider Example';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_TITLE,
      home: HomeRoute(),
    ); // MaterialApp()
  }
}

class HomeRoute extends StatefulWidget {
  @override
  _HomeRoute createState() => _HomeRoute();
}

class _HomeRoute extends State<HomeRoute> {
  //
  double _sliderValue = 0;

  void _sliderChanged(double value) {
    setState(() => _sliderValue = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 200.0,
              height: 100.0,
              child: Slider(
                value: _sliderValue,
                min: 0.0,
                max: 100.0,
                divisions: 100,
                label: _sliderValue.round().toString(),
                onChanged: _sliderChanged,
              ), // Slider()
            ), // SizedBox()
            Text(
              _sliderValue.round().toString(),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ), // TextStyle()
            ), // Text()
          ], // List<Widget>[]
        ), // Row()
      ), // SafeArea()
    ); // Scaffold()
  }
}
