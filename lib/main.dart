import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  double _fontSize = 40;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              maxLines: null,
              style: TextStyle(
                fontSize: _fontSize
              ),
            ),
            Slider(
                value: _fontSize,
                onChanged: (newValue){
                  setState(() {
                    _fontSize = newValue;
                  });
                },
            max: 200,
              min: 20,
            )
          ],
        ),
      ),
    );
  }
}
