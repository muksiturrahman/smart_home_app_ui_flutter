import 'package:flutter/material.dart';
import 'package:innovainfosys_ui_test/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home App',
      home: HomePage(),
    );
  }
}
