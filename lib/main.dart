import 'package:flutter/material.dart';

void main() {
  // runApp(MyApp());
  runApp(FloatingActionButtonExample());
}

class FloatingActionButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('클릭'),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                ),
                child: Text('텍스트 버튼'),
              ),
              OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.red,
                  ),
                  child: Text('아웃라인드 버튼')
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: Text('엘레베이티드 버튼'),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                  ),
              ),
              GestureDetector(
                onTap: () {
                  print('on tap');
                },
                onDoubleTap: () {
                  print('on double tap');
                },
                onLongPress: () {
                  print('on long press');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  width: 100.0,
                  height: 100.0,
                ),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Text('클릭'),
              ),
            ],
          )
        ),
      ),
    );
  }
}