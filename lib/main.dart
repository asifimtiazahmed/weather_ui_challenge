import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatefulWidget {
  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        body: Container(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Text('Miami, FL', style: TextStyle(fontSize: 15, color: Colors.grey),),
                  Text('30°', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, decorationThickness: 4.0, color: Colors.white70),), //ASCII for ° Alt+0176
                  SizedBox(height: 50.0,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
