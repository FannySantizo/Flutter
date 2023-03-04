import 'package:flutter/material.dart';
import 'package:electromecanicos_ja/view/home_screen.dart';

// function to trigger app build
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Homes());
  }
}
