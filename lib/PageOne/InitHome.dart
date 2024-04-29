import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_mechanich_hacaton_/PageOne/GetStarted.dart';

class InitHome extends StatefulWidget {
  const InitHome({super.key});

  @override
  State<InitHome> createState() => _InitHome();
}

class _InitHome extends State<InitHome> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      // Переход на следующий экран после 5 секунд ожидания
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => MyHomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/Logo_1.png",
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List<String> _images = [
    'assets/images/Converted_1.png',
    'assets/images/Converted_2.png',
  ];
  List<String> _texts = [
    'Have you ever needed to take your ',
    'Have you ever needed to take your ',
  ];
  List<String> _texts_2 = [
    'vehicle into the repair shop, but',
    'vehicle into the repair shop, but',
  ];
  List<String> _texts_3 = [
    'didn’t have the time?',
    'didn’t have the time?',
  ];

  void _incrementCounter() {
    setState(() {
      if (_counter < 1) {
        _counter++;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GetStarted()),
        );
        _counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            Image.asset(
              _images[_counter],
              width: 250,
              height: 250,
            ),
            SizedBox(height: 20),
            Text(
              _texts[_counter],
            ),
            Text(
              _texts_2[_counter],
            ),
            Text(
              _texts_3[_counter],
            ),
            SizedBox(height: 200),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color.fromRGBO(109, 72, 255, 0.95),
                ),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                minimumSize: MaterialStateProperty.all(Size(350, 50)),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              onPressed: _incrementCounter,
              child: Text('Next'),
            ),
            SizedBox(
              height: 0,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => GetStarted(),
                    ),
                  );
                },
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
