import 'package:flutter/material.dart';

void main() {
  // runApp(MyApp());
  // runApp(FlexibleWidgetExample());
  runApp(ExpeandedWidgetExample());
}

class FlexibleWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(

          width: double.infinity,
          child: Column(
            children: [
              Flexible(
                flex: 3,
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExpeandedWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(

          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(''),
        )
      ),
    );
  }
}