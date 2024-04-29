import 'package:flutter/material.dart';
import 'package:mobile_mechanich_hacaton_/PageOne/InitHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
